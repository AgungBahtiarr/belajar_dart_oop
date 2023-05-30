import 'package:http/http.dart';

import 'BookDB.dart';
import 'ResponseToBook.dart';
import 'singleBookApi.dart';
import 'Buku.dart';

void main(List<String> args) async {
  // SingleBookTesting
  var isbn = "0736231919";
  Uri uri = Uri.parse("https://openlibrary.org/isbn/$isbn.json");
  SingleBookApi api = SingleBookApi(uri);
  Response response = await api.getFromApi();
  // print(response.body);

  //ResponseToBookTesting
  ResponseToBook converter = ResponseToBook();
  Buku buku = await converter.toBook(response);
  print(buku.penerbit);

  
}
