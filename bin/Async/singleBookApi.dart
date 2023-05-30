import 'package:http/http.dart';
import 'package:http/http.dart' as http;

class SingleBookApi {
  Response response = Response("Data tidak ada", 404);
  Uri? url;
  SingleBookApi(this.url);

  Future<Response> getFromApi() async {
    try {
      response = await http.get(url!);
      return response;
    } catch (e) {
      print(e);
    }
    return response;
  }
}
