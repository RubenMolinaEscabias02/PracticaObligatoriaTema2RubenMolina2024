import 'package:flutter/material.dart';
import 'package:practica_obligatoria_t2/models/juego_model.dart';
import 'package:practica_obligatoria_t2/services/juego_service.dart';
import 'package:practica_obligatoria_t2/widgets/juego_view_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String filtro = "";  // Filtro, si esta vacio se pintan todos los juegos, si tiene un filtro se pinta ese filtro

  @override
  Widget build(BuildContext context) {
    JuegoService juegoService = JuegoService();

    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.restore),
            onPressed: () {
              setState(() {
                filtro = "";  // Resetea el filtro a vacio
              });
            },
          ),
          TextButton(
            onPressed: () {
              setState(() {
                filtro = "shooter";  // Aplica el filtro "shooter"
              });
            },
            child: Text("Juegos shooter"),
          )
        ],
        title: Text('Juegos gratis'),
        backgroundColor: const Color.fromARGB(255, 1, 126, 189),
      ),
      body: FutureBuilder(
        future: juegoService.filtraJuego(filtro),  // Utiliza el filtro actualizado
        builder: (BuildContext context, AsyncSnapshot<List<Juego>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasData && snapshot.data != null) {
            return SingleChildScrollView(
              child: Column(
                children: List.generate(
                  snapshot.data!.length, 
                  (index) => JuegoViewWidget(juego: snapshot.data![index]),
                ),
              ),
            );
          } else {
            return Center(child: Text("No hay juegos disponibles"));
          }
        },
      ),
    );
  }
}
