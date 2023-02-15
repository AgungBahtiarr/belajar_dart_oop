class luasLingkaran {
  int r = 0;
  final double pi = 3.14;

  void hitung() {
    var hasil = pi * r * r;
    print(hasil);
  }
}

void main(List<String> args) {
  luasLingkaran lingkaran1 = luasLingkaran();
  lingkaran1.r = 10;
  lingkaran1.hitung();
}
