import '../lib/client.dart';
import 'package:test/test.dart';

void main() async {
  var client = new Client();

  test('List Domains', () {
    client.getDomains().then((domains) {
      domains.forEach((element) {
        print(element.name);
      });
    });
  });
}
