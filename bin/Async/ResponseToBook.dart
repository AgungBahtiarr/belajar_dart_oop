import 'package:http/http.dart';
import 'dart:convert' as convert;
import 'Buku.dart';

class ResponseToBook {
  Buku toBook(Response response) {
    Buku buku = Buku();
    try {
      var data = convert.jsonDecode(response.body) as Map<String, dynamic>;
      buku.isbn = data['isbn_13'][0];
      buku.judulBuku = data['title'];
      buku.penerbit = data['publishers'][0];
    } catch (e) {
      print(e);
    }
    return buku;
  }
}
