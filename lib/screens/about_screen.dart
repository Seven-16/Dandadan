import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Acerca de'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Imagen del autor
              CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('assets/images/autor.jpg'),
              ),
              SizedBox(height: 20),

              // Nombre del autor
              Text(
                'Yukinobu Tatsu',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),

              // Descripción del autor
              RichText(
                textAlign: TextAlign.justify, // Alineación justificada
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: '¡Este es ',
                    ),
                    TextSpan(
                      text: '龍 幸伸 (Tatsu Yukinobu)',
                      style: TextStyle(
                        fontWeight: FontWeight.bold, // Negrita
                        fontStyle: FontStyle.italic, // Cursiva
                      ),
                    ),
                    TextSpan(
                      text: ', un apasionado desarrollador de aplicaciones móviles con experiencia en Flutter. Me encanta crear aplicaciones que sean útiles y fáciles de usar.\n\n',
                    ),
                    TextSpan(
                      text: 'En mi tiempo libre, disfruto de la música, los videojuegos y aprender nuevas tecnologías. Siempre estoy buscando nuevos desafíos y oportunidades para crecer profesionalmente.\n\n',
                    ),
                    TextSpan(
                      text: '¡Gracias por usar mi aplicación!',
                      style: TextStyle(
                        fontWeight: FontWeight.bold, // Negrita
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}