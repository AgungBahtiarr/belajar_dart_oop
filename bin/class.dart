class Person {
  String name = "Agung";
  String? address;
  final String country = "Indonesia";

  void sayHello(String paramName) {
    print('Hello $paramName, My name is $name');
  }
}

class Mobil {
  String? merk;
  int? tahun;
}

void main(List<String> args) {
  Person person1 = Person();
  person1.name = "Rudi";
  person1.address = "jajang surat";
  print(person1.name);
  print(person1.address);
  print(person1.country);
  person1.sayHello("Agung");

  // Person person2 = Person();

  Mobil mobil1 = Mobil();
  mobil1.merk = "Avanza";
  mobil1.tahun = 2020;

  print(
      "ini adalah mobil1 dengan Merk ${mobil1.merk} dan dibuat pada tahun ${mobil1.tahun}");
}
