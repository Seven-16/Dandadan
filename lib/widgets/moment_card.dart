import 'package:flutter/material.dart';
import '../models/moment.dart';

class MomentCard extends StatelessWidget {
  final Moment moment;

  MomentCard({required this.moment});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(moment.imageUrl),
        title: Text(moment.title),
        subtitle: Text(moment.description),
        onTap: () {
          // Navegar a la pantalla de detalles
        },
      ),
    );
  }
}