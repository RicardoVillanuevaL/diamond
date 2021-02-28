class ServicesPokemonApi {
  Future<dynamic> pokemonGo() {
    final url =
        'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json';
  }

  Future<dynamic> pokemonApi(int id) {
    final url = 'https://pokeapi.co/api/v2/pokemon-form/$id/';
  }
}
