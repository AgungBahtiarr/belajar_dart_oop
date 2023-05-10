import 'dart:io';
import 'Buku.dart';
import 'book_api.dart';

void main(List<String> args) async {
  Buku buku;

  print("Masukkan Isbn: ");
  String? isbn = stdin.readLineSync();

  BookApi api = BookApi();

  buku = await api.getFromApi(isbn);

  print(buku.isbn);
  print(buku.penerbit);
  print(buku.judulBuku);
  print(buku.author);
}
