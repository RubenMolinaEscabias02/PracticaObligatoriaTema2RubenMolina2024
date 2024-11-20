import 'dart:convert';

import 'package:http/http.dart';
import 'package:practica_obligatoria_t2/models/juego_model.dart';

class JuegoService {
  Map<String, String> headers = {
      "x-rapidapi-host" : "free-to-play-games-database.p.rapidapi.com",
      "x-rapidapi-key" : "9e0e391e7bmsh5434cb95bd03167p15685bjsn9319e9a75ecb"
    };
  Future<List<Juego>> getJuegosAll() async {
    String url = "https://free-to-play-games-database.p.rapidapi.com/api/games";
    List<Juego> juegos = [];

    Uri uri = Uri.parse(url);

    Response response = await get(uri, headers: headers);

    for (var j in jsonDecode(response.body)) {
      juegos.add(Juego.fromJson(j));
    }

    return juegos;
  }
  Future<List<Juego>> getJuegosGenero(String genero) async {
    String url = "https://free-to-play-games-database.p.rapidapi.com/api/games?category=$genero";
    print(url);
    List<Juego> juegos = [];

    Uri uri = Uri.parse(url);

    Response response = await get(uri, headers: headers);

    for (var j in jsonDecode(response.body)) {
      juegos.add(Juego.fromJson(j));
    }
    return juegos;
  }

  Future<List<Juego>> filtraJuego(String filtro) async{
    if (filtro == "") return await this.getJuegosAll();
    return await this.getJuegosGenero(filtro);
  }
}