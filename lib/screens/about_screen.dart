import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Acerca de'),
      ),
      backgroundColor: Colors.black, // Fondo negro para toda la pantalla
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
                  color: Colors.white, // Texto blanco para el nombre
                  fontFamily: 'EBGaramond-Regular',
                ),
              ),
              SizedBox(height: 20),

              // Card con fondo rojo y transparente
              Card(
                color: Colors.red.withOpacity(0.3), // Fondo rojo con transparencia
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 5,
                margin: EdgeInsets.symmetric(horizontal: 16.0),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: RichText(
                    textAlign: TextAlign.justify, // Alineación justificada
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white, // Texto blanco
                      ),
                      children: [
                        TextSpan(
                          text: 'Es uno de los grandes nombres propios de la industria del anime a día de hoy, y la razón es una bien clara: se trata del autor de "Dandadan". Lo que hasta ahora era \'solo\' uno de los mangas más exitosos a la par que prometedores de Shonen Jump ha debutado también como anime, y las impresiones generales son de que estamos ante una producción que puede convertirse en lo mejor de todo 2024. Pero, indagando un poco más en Tatsu-sensei, ¿qué es lo que sabemos realmente sobre su persona?\n\n',
                        ),
                        TextSpan(
                          text: 'Es muy habitual que en la industria del anime se empiece como asistente. Al fin y al cabo, obtener una publicación propia es el resultado de mucho trabajo duro y de éxitos menores. Así fue cómo Yukinobu Tatsu se fue labrando su nombre en el sector, de primeras trabajando para dos autores en concreto: Tatsuki Fujimoto y Yuuji Kaku.\n\n',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
