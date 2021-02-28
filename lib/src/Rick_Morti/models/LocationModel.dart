import 'dart:convert';

List<LocationModelRickyMorty> locationModelRickyMortyFromJson(String str) =>
    List<LocationModelRickyMorty>.from(
        json.decode(str).map((x) => LocationModelRickyMorty.fromJson(x)));

String locationModelRickyMortyToJson(List<LocationModelRickyMorty> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class LocationModelRickyMorty {
  LocationModelRickyMorty({
    this.id,
    this.name,
    this.type,
    this.dimension,
    this.residents,
    this.url,
    this.created,
  });

  int id;
  String name;
  String type;
  String dimension;
  List<String> residents;
  String url;
  DateTime created;

  factory LocationModelRickyMorty.fromJson(Map<String, dynamic> json) =>
      LocationModelRickyMorty(
        id: json["id"],
        name: json["name"],
        type: json["type"],
        dimension: json["dimension"],
        residents: List<String>.from(json["residents"].map((x) => x)),
        url: json["url"],
        created: DateTime.parse(json["created"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "type": type,
        "dimension": dimension,
        "residents": List<dynamic>.from(residents.map((x) => x)),
        "url": url,
        "created": created.toIso8601String(),
      };
}
