import 'package:flutter/material.dart';
import 'package:practica_obligatoria_t2/presentation/screens/home_screen.dart';
import 'package:practica_obligatoria_t2/services/juego_service.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    JuegoService juegoService = JuegoService();

    juegoService.getJuegosAll();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: HomeScreen()
    );
  }
}