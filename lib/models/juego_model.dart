// To parse this JSON data, do
//
//     final juego = juegoFromJson(jsonString);

import 'dart:convert';

Juego juegoFromJson(String str) => Juego.fromJson(json.decode(str));

class Juego {
    int id;
    String title;
    String thumbnail;
    String shortDescription;
    String genre;
    String platform;

    Juego({
        required this.id,
        required this.title,
        required this.thumbnail,
        required this.shortDescription,
        required this.genre,
        required this.platform,
    });

    factory Juego.fromJson(Map<String, dynamic> json) => Juego(
        id: json["id"],
        title: json["title"],
        thumbnail: json["thumbnail"],
        shortDescription: json["short_description"],
        genre: json["genre"],
        platform: json["platform"],
    );
}
