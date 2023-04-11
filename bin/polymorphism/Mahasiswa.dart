import 'dart:ffi';

import 'Manusia.dart';

class Mahasiswa extends Manusia {
  String? _nim;

  String get nim => this._nim!;
  set nim(String nim) => this._nim = nim;
  @override
  void pekerjaan() {
    print("belajar");
  }
}
