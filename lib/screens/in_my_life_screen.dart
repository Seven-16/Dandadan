import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class InMyLifeScreen extends StatefulWidget {
  @override
  _InMyLifeScreenState createState() => _InMyLifeScreenState();
}

class _InMyLifeScreenState extends State<InMyLifeScreen> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();

    // ID del video de YouTube (es la parte final de la URL del video)
    const videoId = 'gdIYXJq26fs'; // Reemplaza con el ID de tu video de YouTube

    // Inicializa el controlador de YouTube
    _controller = YoutubePlayerController(
      initialVideoId: videoId,
      flags: YoutubePlayerFlags(
        autoPlay: false, // No reproducir automáticamente
        mute: false,     // No silenciar el video
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('En mi vida', style: TextStyle(color: Colors.white)), // Título en blanco
        backgroundColor: Colors.black, // Fondo negro en el AppBar
        iconTheme: IconThemeData(color: Colors.white), // Flecha en blanco
      ),
      backgroundColor: Colors.black, // Fondo negro en el cuerpo
      body: Center(
        child: YoutubePlayer(
          controller: _controller,
          showVideoProgressIndicator: true, // Muestra el indicador de progreso
          progressIndicatorColor: Colors.blueAccent, // Color del indicador
          progressColors: ProgressBarColors(
            playedColor: Colors.blue, // Color de la parte reproducida
            handleColor: Colors.blueAccent, // Color del control deslizante
          ),
          onReady: () {
            // Lógica cuando el reproductor está listo
            print('Reproductor listo');
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose(); // Libera los recursos del reproductor
  }
}
