import 'dart:io';
import 'package:http/http.dart';
import 'package:mysql_client/mysql_client.dart';
import 'BookDB.dart';
import 'Buku.dart';
import 'ResponseToBook.dart';
import 'ViewBook.dart';
import 'singleBookApi.dart';

void main(List<String> args) async {
  ResponseToBook converter = ResponseToBook();
  print("Masukkan ISBN");

  String? isbn = stdin.readLineSync();
  SingleBookApi api =
      SingleBookApi(Uri.parse("https://openlibrary.org/isbn/$isbn.json"));

  try {
    Response response = await api.getFromApi();
    Buku buku = converter.toBook(response);
    print(buku.judulBuku);

    final conn = await MySQLConnection.createConnection(
        host: "localhost",
        port: 3306,
        userName: "root",
        password: "1",
        databaseName: "buku",
        secure: false);
    BookDB bookDB = BookDB(conn);
    await bookDB.insert(buku);
    var result = await bookDB.getBuku();
    ViewBook.view(result);
  } catch (e) {
    print(e);
  }
}
