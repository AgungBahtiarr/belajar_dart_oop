class Manusia {
  String? _name;
  int? _beratBadan;

  String get name => this._name!;
  set name(String name) => this._name = name;

  int get beratBadan => this._beratBadan!;
  set beratBadan(int beratBadan) => this._beratBadan = beratBadan;

  void pekerjaan() {
    print("Mencari Nafkah");
  }
}
