import 'package:flutter/material.dart';
import '../models/character.dart';

class CharacterCard extends StatelessWidget {
  final Character character;

  CharacterCard({required this.character});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(character.imageUrl),
        title: Text(character.name),
        subtitle: Text(character.description),
        onTap: () {
          // Navegar a la pantalla de detalles
        },
      ),
    );
  }
}