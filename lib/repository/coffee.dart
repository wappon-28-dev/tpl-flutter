import 'package:http/http.dart' as http;

class RepositoryCoffee {
  Future<http.Response> getCoffee() async {
    return http.get(Uri.parse('https://api.sampleapis.com/coffee/hot'));
  }
}
