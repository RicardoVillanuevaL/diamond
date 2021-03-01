import 'package:http/http.dart' as http;

class ServicesRickAndMorty {
  Future<dynamic> servicesPersonajes() async {
    final url = 'https://rickandmortyapi.com/api/character';
    final response = await http.get(url);
    final body = response.body;
    print(body);
  }

  Future<dynamic> servicesPlanetas() async {
    final url = 'https://rickandmortyapi.com/api/location';
    final response = await http.get(url);
    final body = response.body;
    print(body);
  }
}
