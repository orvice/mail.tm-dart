import '../lib/client.dart';
import '../lib/model.dart';
import 'package:test/test.dart';

void main() async {
  var client = new Client();

  var domain;

  var domains = await client.getDomains();
  domains.forEach((element) {
    domain = element.name;
    print(element.name);
  });

  test('List Domains', () {});

  var user = client.getRandString(16);
  var pass = client.getRandString(16);
  var address = "$user@$domain";

  // print(address);

  var acct = account(address, pass);
  var resp = await client.createAccount(acct);
  test('Create Account', () {
    expect(resp.address, isNotNull);
  });

  // create token
  print("create token");
  var token = await client.createToken(resp);
  test('Create Create', () {
    expect(token, isNotNull);
  });

  client.token = token;

  var messages = await client.getMessage();
  test('Get Messages', () {
    expect(messages, isNotNull);
  });

  print(messages.length);
}
