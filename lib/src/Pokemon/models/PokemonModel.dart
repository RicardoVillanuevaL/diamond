import 'dart:convert';

PokemonModel pokemonModelFromJson(String str) =>
    PokemonModel.fromJson(json.decode(str));

String pokemonModelToJson(PokemonModel data) => json.encode(data.toJson());

class PokemonModel {
  PokemonModel({
    this.formName,
    this.formNames,
    this.formOrder,
    this.id,
    this.isBattleOnly,
    this.isDefault,
    this.isMega,
    this.name,
    this.names,
    this.order,
    this.pokemon,
    this.sprites,
    this.types,
    this.versionGroup,
  });

  String formName;
  List<dynamic> formNames;
  int formOrder;
  int id;
  bool isBattleOnly;
  bool isDefault;
  bool isMega;
  String name;
  List<dynamic> names;
  int order;
  Pokemon pokemon;
  Sprites sprites;
  List<Type> types;
  Pokemon versionGroup;

  factory PokemonModel.fromJson(Map<String, dynamic> json) => PokemonModel(
        formName: json["form_name"],
        formNames: List<dynamic>.from(json["form_names"].map((x) => x)),
        formOrder: json["form_order"],
        id: json["id"],
        isBattleOnly: json["is_battle_only"],
        isDefault: json["is_default"],
        isMega: json["is_mega"],
        name: json["name"],
        names: List<dynamic>.from(json["names"].map((x) => x)),
        order: json["order"],
        pokemon: Pokemon.fromJson(json["pokemon"]),
        sprites: Sprites.fromJson(json["sprites"]),
        types: List<Type>.from(json["types"].map((x) => Type.fromJson(x))),
        versionGroup: Pokemon.fromJson(json["version_group"]),
      );

  Map<String, dynamic> toJson() => {
        "form_name": formName,
        "form_names": List<dynamic>.from(formNames.map((x) => x)),
        "form_order": formOrder,
        "id": id,
        "is_battle_only": isBattleOnly,
        "is_default": isDefault,
        "is_mega": isMega,
        "name": name,
        "names": List<dynamic>.from(names.map((x) => x)),
        "order": order,
        "pokemon": pokemon.toJson(),
        "sprites": sprites.toJson(),
        "types": List<dynamic>.from(types.map((x) => x.toJson())),
        "version_group": versionGroup.toJson(),
      };
}

class Pokemon {
  Pokemon({
    this.name,
    this.url,
  });

  String name;
  String url;

  factory Pokemon.fromJson(Map<String, dynamic> json) => Pokemon(
        name: json["name"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "url": url,
      };
}

class Sprites {
  Sprites({
    this.backDefault,
    this.backFemale,
    this.backShiny,
    this.backShinyFemale,
    this.frontDefault,
    this.frontFemale,
    this.frontShiny,
    this.frontShinyFemale,
  });

  String backDefault;
  dynamic backFemale;
  String backShiny;
  dynamic backShinyFemale;
  String frontDefault;
  dynamic frontFemale;
  String frontShiny;
  dynamic frontShinyFemale;

  factory Sprites.fromJson(Map<String, dynamic> json) => Sprites(
        backDefault: json["back_default"],
        backFemale: json["back_female"],
        backShiny: json["back_shiny"],
        backShinyFemale: json["back_shiny_female"],
        frontDefault: json["front_default"],
        frontFemale: json["front_female"],
        frontShiny: json["front_shiny"],
        frontShinyFemale: json["front_shiny_female"],
      );

  Map<String, dynamic> toJson() => {
        "back_default": backDefault,
        "back_female": backFemale,
        "back_shiny": backShiny,
        "back_shiny_female": backShinyFemale,
        "front_default": frontDefault,
        "front_female": frontFemale,
        "front_shiny": frontShiny,
        "front_shiny_female": frontShinyFemale,
      };
}

class Type {
  Type({
    this.slot,
    this.type,
  });

  int slot;
  Pokemon type;

  factory Type.fromJson(Map<String, dynamic> json) => Type(
        slot: json["slot"],
        type: Pokemon.fromJson(json["type"]),
      );

  Map<String, dynamic> toJson() => {
        "slot": slot,
        "type": type.toJson(),
      };
}
