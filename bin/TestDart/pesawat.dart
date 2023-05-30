import 'terbang.dart';


class Pesawat implements InterfaceTerbang {
  @override
  void terbang() {
    print("Pesawat Terbang");
  }

  void engineOn() {
    print("Mesin Pesawat Hidup");
  }
}
