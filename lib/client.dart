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

  Future<account> createAccount() async {
    var url = Uri.parse(endpoint + '/accounts');
    var response = await http.post(url);
    if (response.statusCode != 201) {
      throw Exception('Failed to create account');
    }

    final Map<String, dynamic> map = json.decode(response.body);
    return new account.fromJson(map);
  }
}
