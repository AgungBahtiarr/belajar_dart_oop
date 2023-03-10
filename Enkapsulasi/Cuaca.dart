class Cuaca {
  late String _namaCuaca;
  late String _sinarMatahari;
  late double _suhuUdara;
  late String _kelembapanUdara;

  String get namaCuaca => _namaCuaca;
  String get sinarMatahari => _sinarMatahari;
  double get suhuUdara => _suhuUdara;
  String get kelembapanUdara => _kelembapanUdara;

  set namaCuaca(String namaCuaca) => _namaCuaca = namaCuaca;
  set sinarMatahari(String sinarMatahari) => _sinarMatahari = sinarMatahari;
  set suhuUdara(double suhuUdara) => _suhuUdara = suhuUdara;
  set kelembapanUdara(String kelembapanUdara) =>
      _kelembapanUdara = kelembapanUdara;
}

void main(List<String> args) {
  var cuaca1 = Cuaca();

  cuaca1.namaCuaca = "Cerah";
  cuaca1.sinarMatahari = "Bersinar terang";
  cuaca1.suhuUdara = 25.8;
  cuaca1.kelembapanUdara = "70%-80%.";

  print(
      "Sinar matahari saat cuaca ${cuaca1.namaCuaca} ${cuaca1.sinarMatahari}");
  print(
      "Suhu udara saat cuaca ${cuaca1.namaCuaca} adalah ${cuaca1.suhuUdara}°C");
  print(
      "Kelembapan udara saat cuaca ${cuaca1.namaCuaca} adalah ${cuaca1.kelembapanUdara}");

  var cuaca2 = Cuaca();

  cuaca2.namaCuaca = "Hujan";
  cuaca2.sinarMatahari = "Tidak ada";
  cuaca2.suhuUdara = 22.8;
  cuaca2.kelembapanUdara = "50%-80%";

  print(
      "Sinar matahari saat cuaca ${cuaca2.namaCuaca} ${cuaca2.sinarMatahari}");
  print(
      "Suhu udara saat cuaca ${cuaca2.namaCuaca} adalah ${cuaca2.suhuUdara}°C");
  print(
      "Kelembapan udara saat cuaca ${cuaca2.namaCuaca} adalah ${cuaca2.kelembapanUdara}");
}
