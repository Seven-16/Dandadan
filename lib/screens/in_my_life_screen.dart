import 'package:flutter/material.dart';
import '../widgets/project_video_mobile.dart' if (dart.library.js_interop) '../widgets/project_video_web.dart';

class InMyLifeScreen extends StatefulWidget {
  @override
  _InMyLifeScreenState createState() => _InMyLifeScreenState();
}

class _InMyLifeScreenState extends State<InMyLifeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('En mi vida', style: TextStyle(color: Colors.white)), // Título en blanco
        backgroundColor: Colors.black, // Fondo negro en el AppBar
        iconTheme: IconThemeData(color: Colors.white), // Flecha en blanco
      ),
      backgroundColor: Colors.black, // Fondo negro en el cuerpo
      body: Center(
        child: ProjectVideo(videoId: 'gdIYXJq26fs'),
      ),
    );
  }
}
