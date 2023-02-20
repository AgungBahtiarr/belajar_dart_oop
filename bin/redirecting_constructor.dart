class Person {
  String name = "Guest";
  String? address;
  final String country = "Indonesia";
  Person(this.name, this.address); //{
  // this.name = name;  tidak perlu seperti ini lagi
  // this.address = address;
  //}

  // Redirecting Constructor
  Person.withName(String name) : this(name, ""); //this akan di arahkan ke default constructor
  Person.withAddress(String address) : this("", address);

  // Redirecting Constructor juga bisa untuk mendirect tidak hanya ke default namun bisa juga ke named constructor
  // dengan cara this.namedConstructor();
  Person.fromJakarta() : this.withAddress("Jakarta");
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
