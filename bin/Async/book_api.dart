import 'Buku.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class BookApi {
  Future<Buku> getFromApi(String? isbn) async {
    try {
      Buku buku = Buku();
      buku.isbn = isbn!;

      var urlBuku = Uri.parse('https://openlibrary.org/isbn/$isbn.json');
      var response = await http.get(urlBuku);
      var jsonResponse =
          convert.jsonDecode(response.body) as Map<String, dynamic>;
      buku.judulBuku = jsonResponse['title'];
      buku.penerbit = jsonResponse['publishers'][0];
      var ambilAuthor = jsonResponse['authors'][0]['key'];
      var aSplit = ambilAuthor.split('/');

      var urlAuthor =
          Uri.parse('https://openlibrary.org/authors/${aSplit[2]}.json');
      var responseAuthor = await http.get(urlAuthor);
      var jsonAuthor =
          convert.jsonDecode(responseAuthor.body) as Map<String, dynamic>;

      buku.author = jsonAuthor['name'];
      return buku;
    } on Exception {
      print("Isbn salah");
      throw FormatException();
    }
  }
}
