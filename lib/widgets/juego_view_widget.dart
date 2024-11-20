import 'package:flutter/material.dart';
import 'package:practica_obligatoria_t2/models/juego_model.dart';
import 'package:practica_obligatoria_t2/services/juego_service.dart';

class JuegoViewWidget extends StatefulWidget {
  final Juego juego;

  const JuegoViewWidget({super.key, required this.juego});

  @override
  State<JuegoViewWidget> createState() => _JuegoViewWidgetState();
}

class _JuegoViewWidgetState extends State<JuegoViewWidget> {
  JuegoService juegoService = JuegoService();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(widget.juego.title),
          subtitle: Text(widget.juego.shortDescription),
        ),
        Image.network(
            widget.juego.thumbnail,
            height: 300,
            width: 600,
            fit: BoxFit.cover,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) {
                return child; // Imagen cargada, devuelve la imagen
              }
                return Center(child: CircularProgressIndicator()); // Indicador de carga
            },
            errorBuilder: (context, error, stackTrace) {
              // Gestion errores
              return Icon(Icons.error, color: Colors.red);
            },
          ),
          Text("Plataforma: ${widget.juego.platform}\n Genero: ${widget.juego.genre}")
      ],
    );
  }
}
