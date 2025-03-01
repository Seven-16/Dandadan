import 'package:flutter/material.dart';
import '../models/character.dart';
import '../data/characters_data.dart';
import 'character_detail_screen.dart';

class CharactersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personajes', style: TextStyle(color: Colors.white)), // Título en blanco
        backgroundColor: Colors.black, // Fondo negro en el AppBar
        iconTheme: IconThemeData(color: Colors.white), // Flechita blanca
      ),
      backgroundColor: Colors.black, // Fondo negro en el cuerpo
      body: ListView.builder(
        itemCount: characters.length,
        itemBuilder: (context, index) {
          final character = characters[index];
          return Card(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            color: Colors.red.withOpacity(0.7), // Fondo rojo translúcido
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12), // Bordes redondeados
            ),
            child: ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(character.imageUrl, width: 50, height: 50, fit: BoxFit.cover), // Imagen del personaje
              ),
              title: Text(
                character.name,
                style: TextStyle(
                  color: Colors.white, // Texto blanco
                  fontFamily: 'PlaywriteITModerna', // Fuente importada
                  fontSize: 18,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CharacterDetailScreen(character: character),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
