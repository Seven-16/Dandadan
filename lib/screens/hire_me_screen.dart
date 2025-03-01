import 'package:flutter/material.dart';

class HireMeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contrátame',
          style: TextStyle(color: Colors.white), // Texto blanco en el AppBar
        ),
        backgroundColor: Colors.black, // Fondo del AppBar en negro
        iconTheme: IconThemeData(color: Colors.white), // Flechita en blanco
      ),
      backgroundColor: Colors.black, // Fondo de la pantalla en negro
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/yo.jpg'),
            ),
            SizedBox(height: 20),
            Card(
              color: Colors.red.withOpacity(0.7), // Card rojo transparente
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text(
                      'Nombre: Aaron Carmona',
                      style: TextStyle(
                        color: Colors.white, // Texto blanco
                        fontSize: 18,
                        fontFamily: 'PlaywriteITModerna', // Puedes usar la fuente que desees
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Email: carmaar1216@gmail.com',
                      style: TextStyle(
                        color: Colors.white, // Texto blanco
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Teléfono: +1(829)-993-3365',
                      style: TextStyle(
                        color: Colors.white, // Texto blanco
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
