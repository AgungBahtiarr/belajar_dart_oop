import 'dart:ffi';

abstract class Location {
  // object tidak akan bisa dibuat dari class ini
  String? name; // class ini dibuat hanya untuk diturunkan.

  void profinsi(); // abstract class tanpa body bisa digunakan turunan
}

class City extends Location {
  City(String name) {
    this.name = name;
  }
  void profinsi() {
    print("Jawa Timur");
  }
}

void main(List<String> args) {
  // Location banyuwangi = Location(); akan error

  City banyuwangi = City("Banyuwangi");
  banyuwangi.profinsi();
  print(banyuwangi.name);
}
