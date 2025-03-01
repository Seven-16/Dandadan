import 'package:flutter/material.dart';

class HireMeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contrátame'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/yo.jpg'),
            ),
            SizedBox(height: 20),
            Text('Nombre: Aaron Carmona'),
            SizedBox(height: 10),
            Text('Email: carmaar1216@gmail.com'),
            SizedBox(height: 10),
            Text('Teléfono: +1(829)-993-3365'),
          ],
        ),
      ),
    );
  }
}