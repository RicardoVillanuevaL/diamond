import 'package:http/http.dart' as http;

class ServicesPokemonApi {
  Future<dynamic> pokemonGo() async {
    final url =
        'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json';

    final response = await http.get(url);
    final body = response.body;
    print(body);
  }

  Future<dynamic> pokemonApi(int id) async {
    final url = 'https://pokeapi.co/api/v2/pokemon-form/$id/';
    final response = await http.get(url);
    final body = response.body;
    print(body);
  }
}

final servicesPokemonApi = ServicesPokemonApi();
