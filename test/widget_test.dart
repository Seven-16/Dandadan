import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tareita5/main.dart'; // Asegúrate de importar tu archivo main.dart

void main() {
  testWidgets('Prueba de MyApp', (WidgetTester tester) async {
    // Elimina el const de MyApp
    await tester.pumpWidget(MyApp());

    // Verifica que el texto de la portada esté presente
    expect(find.text('Portada'), findsOneWidget);
  });
}