import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'screens/home_screen.dart';
import 'screens/characters_screen.dart';
import 'screens/moments_screen.dart';
import 'screens/about_screen.dart';
import 'screens/in_my_life_screen.dart';
import 'screens/hire_me_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Aplicación',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // En pantallas grandes, la versión web se muestra dentro de un marco
      // de teléfono. En móviles y en la app Android se usa toda la pantalla.
      builder: (context, child) {
        if (!kIsWeb) return child ?? const SizedBox.shrink();
        return LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 600 || constraints.maxHeight < 500) {
              return child ?? const SizedBox.shrink();
            }
            final phoneHeight = (constraints.maxHeight - 48).clamp(0.0, 860.0).toDouble();
            final phoneWidth = (constraints.maxWidth - 48).clamp(0.0, 400.0).toDouble();
            return ColoredBox(
              color: const Color(0xFF17191D),
              child: Center(
                child: Container(
                  width: phoneWidth,
                  height: phoneHeight,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(28),
                    border: Border.all(color: const Color(0xFF45484F), width: 3),
                    boxShadow: const [BoxShadow(color: Colors.black54, blurRadius: 30, offset: Offset(0, 14))],
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: LayoutBuilder(
                    builder: (context, phoneConstraints) => MediaQuery(
                      data: MediaQuery.of(context).copyWith(
                        size: Size(phoneConstraints.maxWidth, phoneConstraints.maxHeight),
                        padding: EdgeInsets.zero,
                        viewPadding: EdgeInsets.zero,
                        viewInsets: EdgeInsets.zero,
                      ),
                      child: child ?? const SizedBox.shrink(),
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
      home: HomeScreen(),
      routes: {
        '/characters': (context) => CharactersScreen(),
        '/moments': (context) => MomentsScreen(),
        '/about': (context) => AboutScreen(),
        '/in_my_life': (context) => InMyLifeScreen(),
        '/hire_me': (context) => HireMeScreen(),
      },
    );
  }
}