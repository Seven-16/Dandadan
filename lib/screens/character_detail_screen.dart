import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../models/character.dart';

class CharacterDetailScreen extends StatefulWidget {
  final Character character;

  CharacterDetailScreen({required this.character});

  @override
  _CharacterDetailScreenState createState() => _CharacterDetailScreenState();
}

class _CharacterDetailScreenState extends State<CharacterDetailScreen> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    // Reemplaza el path del video local con el ID del video de YouTube
    String youtubeVideoId = getYoutubeVideoId(widget.character.youtubeVideoUrl); // Función para obtener el ID

    _controller = YoutubePlayerController(
      initialVideoId: youtubeVideoId,
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
  }

  String getYoutubeVideoId(String url) {
    // Usar el paquete youtube_player_flutter para obtener el ID de YouTube
    return YoutubePlayer.convertUrlToId(url)!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.character.name, style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black, // Fondo negro en el cuerpo
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Imagen del personaje
            Image.asset(
              widget.character.imageUrl,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Nombre del personaje
                  Text(
                    widget.character.name,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white, // Texto blanco
                    ),
                  ),
                  SizedBox(height: 10),
                  // Card rojo translúcido para la descripción
                  Card(
                    margin: EdgeInsets.only(bottom: 20),
                    color: Colors.red.withOpacity(0.7), // Fondo rojo translúcido
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Text(
                        widget.character.description,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white, // Texto blanco
                        ),
                      ),
                    ),
                  ),
                  // Video de YouTube
                  YoutubePlayer(
                    controller: _controller,
                    showVideoProgressIndicator: true,
                    progressIndicatorColor: Colors.amber,
                    progressColors: ProgressBarColors(
                      playedColor: Colors.amber,
                      handleColor: Colors.amberAccent,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
