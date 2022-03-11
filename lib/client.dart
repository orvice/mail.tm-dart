import 'package:http/http.dart' as http;
import 'dart:convert';
import './model.dart';

class Client {
  String endpoint = 'https://api.mail.tm';

  Future<List<domain>> getDomains() async {
    var url = Uri.parse(endpoint + '/domains');
    var response = await http.get(url);
    if (response.statusCode != 200) {
      throw Exception('Failed to load domains');
    }
    final List map = json.decode(response.body)['hydra:member'];
    return map.map((v) => new domain.fromJson(v)).toList();
  }
}
