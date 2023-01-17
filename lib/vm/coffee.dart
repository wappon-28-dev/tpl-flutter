import 'dart:convert';

import '../model/data/class.dart';
import '../repository/coffee.dart';

class CoffeeVM {
  Future<List<CoffeeInfo>> getCoffeeInfo() async {
    final response = await RepositoryCoffee().getCoffee();

    if (response.statusCode == 200) {
      final arr = json.decode(response.body) as List<dynamic>;
      return arr
          .map(
            (e) => CoffeeInfo.fromJson(e as Map<String, dynamic>),
          )
          .toList();
    } else {
      throw Exception('Failed to load coffee info');
    }
  }
}
