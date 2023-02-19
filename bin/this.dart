class Person {
  String name = "Guest";
  String? address;
  final String country = "Indonesia";
  Person(String name, String address) {
    this.name = name; // Saya mau mengakses name di object saat ini
    this.address = address; // Saya mau mengakses address di object saat ini
  }
}

void main(List<String> args) {
  Person agung = Person("Agung Bahtiar", "Kalibaru");
  print(agung.name);
  print(agung.address);
}
