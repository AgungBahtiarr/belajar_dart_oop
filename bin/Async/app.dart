import 'dart:io';
import 'package:mysql_client/mysql_client.dart';
import 'Buku.dart';
import 'book_api.dart';


void main(List<String> args) async {
  Buku buku;
  print("Masukkan Isbn: ");
  String? isbn = stdin.readLineSync();
  BookApi api = BookApi();
  try {
    buku = await api.getFromApi(isbn);
    final conn = await MySQLConnection.createConnection(
        host: "localhost",
        port: 3306,
        userName: "root",
        password: "1",
        databaseName: "buku",
        secure: false);
    await conn.connect();
    var stmt = await conn.prepare(
        "INSERT INTO `buku`(`judul`, `penerbit`, `isbn`) VALUES (?,?,?)");
    await stmt.execute([buku.judulBuku, buku.penerbit, buku.isbn]);
    var result = await conn.execute("SELECT * FROM buku");
    for (final row in result.rows) {
      print(row.assoc());
    }
    await conn.close();
  } catch (e) {
    print(e);
  }
}

