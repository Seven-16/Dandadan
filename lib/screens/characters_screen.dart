import 'package:flutter/material.dart';
import '../models/character.dart';
import '../data/characters_data.dart';
import 'character_detail_screen.dart';

class CharactersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personajes'),
      ),
      body: ListView.builder(
        itemCount: characters.length,
        itemBuilder: (context, index) {
          final character = characters[index];
          return ListTile(
            leading: Image.asset(character.imageUrl),
            title: Text(character.name),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CharacterDetailScreen(character: character),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

