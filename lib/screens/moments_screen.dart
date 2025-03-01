import 'package:flutter/material.dart';
import '../models/moment.dart';
import '../data/moments_data.dart';

class MomentsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Momentos', style: TextStyle(color: Colors.white)), // Título en blanco
        backgroundColor: Colors.black, // Fondo negro en el AppBar
        iconTheme: IconThemeData(color: Colors.white), // Flechita blanca
      ),
      backgroundColor: Colors.black, // Fondo negro en el cuerpo
      body: ListView.builder(
        itemCount: moments.length,
        itemBuilder: (context, index) {
          final moment = moments[index];
          return Card(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            color: Colors.red.withOpacity(0.7), // Fondo rojo translúcido
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12), // Bordes redondeados
            ),
            child: ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(moment.imageUrl, width: 50, height: 50, fit: BoxFit.cover), // Imagen del momento
              ),
              title: Text(
                moment.title,
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
                    builder: (context) => MomentDetailScreen(moment: moment),
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

class MomentDetailScreen extends StatelessWidget {
  final Moment moment;

  MomentDetailScreen({required this.moment});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(moment.title, style: TextStyle(color: Colors.white)), // Título en blanco
        backgroundColor: Colors.black, // Fondo negro en el AppBar
        iconTheme: IconThemeData(color: Colors.white), // Flechita blanca
      ),
      backgroundColor: Colors.black, // Fondo negro en el cuerpo
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(moment.imageUrl),
            SizedBox(height: 20),
            Text(
              moment.description,
              style: TextStyle(
                color: Colors.white, // Texto blanco
                fontSize: 16,
                fontFamily: 'PlaywriteITModerna', // Fuente importada
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Aquí puedes abrir un video relacionado
              },
              child: Text('Ver Video', style: TextStyle(color: Colors.black)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, // Fondo rojo
              ),
            ),
          ],
        ),
      ),
    );
  }
}
