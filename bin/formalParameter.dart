class Person {
  String name = "Guest";
  String? address;
  final String country = "Indonesia";
  Person(this.name, this.address); //{
  // this.name = name;  tidak perlu seperti ini lagi
  // this.address = address;
  //}

  //Named Constructor, Membuat Constructor, lebih dari 1

  Person.withName(this.name);
  Person.withAddress(this.address);
}

void main(List<String> args) {
  Person agung = Person("Agung Bahtiar", "Kalibaru");
  print(agung.name);
  print(agung.address);

  // Mengakses Named Constructor
  Person rafi = Person.withName("Rafi");
  print(rafi.name);

  Person radit = Person.withAddress("Kalibaru");
  print(radit.address);
}
