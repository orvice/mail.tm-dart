import '../lib/client.dart';

void main() async {
  var client = new Client();
  client.getDomains().then((domains) {
    domains.forEach((element) {
      print(element.name);
    });
  });
}
