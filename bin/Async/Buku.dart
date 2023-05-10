class Buku {
  String? _isbn;
  String? _judulBuku;
  String? _penerbit;
  String? _author;

  String get isbn => _isbn!;
  String get judulBuku => _judulBuku!;
  String get penerbit => _penerbit!;
  String get author => _author!;

  set isbn(String isbn) => _isbn = isbn;
  set judulBuku(String judulBuku) => _judulBuku = judulBuku;
  set penerbit(String penerbit) => _penerbit = penerbit;
  set author(String author) => _author = author;

}
