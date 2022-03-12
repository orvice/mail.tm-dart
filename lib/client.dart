import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:math';
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

  Future<account> createAccount(account acct) async {
    var url = Uri.parse(endpoint + '/accounts');
    var response = await await http.post(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(acct),
    );
    if (response.statusCode != 201) {
      // print(response.statusCode);
      // print(response.body);
      throw Exception('Failed to create account');
    }

    // print(response.body);
    final Map<String, dynamic> map = json.decode(response.body);
    return new account.fromJson(map);
  }

  String getRandString(int len) {
    var r = Random();
    const _chars =
        'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
    return List.generate(len, (index) => _chars[r.nextInt(_chars.length)])
        .join();
  }
}
