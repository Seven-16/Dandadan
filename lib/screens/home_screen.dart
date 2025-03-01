import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../models/character.dart';
import '../data/characters_data.dart';
import 'characters_screen.dart';
import 'moments_screen.dart';
import 'about_screen.dart';
import 'in_my_life_screen.dart';
import 'hire_me_screen.dart';
import 'character_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0; // Guarda el índice del personaje actual

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Portada')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.red[800]),
              child: Text(
                'Menú',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'PlaywriteITModerna',
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Portada'),
              onTap: () => Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => HomeScreen()),
              ),
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text('Personajes'),
              onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => CharactersScreen()),
              ),
            ),
            ListTile(
              leading: Icon(Icons.photo_library),
              title: Text('Momentos'),
              onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => MomentsScreen()),
              ),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('Acerca de'),
              onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => AboutScreen()),
              ),
            ),
            ListTile(
              leading: Icon(Icons.video_library),
              title: Text('En mi vida'),
              onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => InMyLifeScreen()),
              ),
            ),
            ListTile(
              leading: Icon(Icons.contact_page),
              title: Text('Contrátame'),
              onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => HireMeScreen()),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: CarouselSlider(
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height * 0.6, // 60% de la pantalla
                autoPlay: true,
                enlargeCenterPage: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index; // Actualiza el índice del personaje
                  });
                },
              ),
              items: characters.map((character) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CharacterDetailScreen(character: character),
                      ),
                    );
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      // Imagen del personaje
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          character.imageUrl,
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.6,
                          fit: BoxFit.cover,
                        ),
                      ),
                      // Card flotante con el nombre del personaje
                      Positioned(
                        bottom: 100, // Ajusta la distancia desde la parte inferior
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 200, vertical: 15),
                          decoration: BoxDecoration(
                            color: Colors.red.withOpacity(0.7), // Fondo semi-transparente
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Text(
                            characters[_currentIndex].name, // Nombre dinámico
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontFamily: 'EBGaramond-Italic',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
