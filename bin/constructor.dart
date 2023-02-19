class Person {
  String name = "Guest";
  String? address;
  final String country = "Indonesia";

  // Constructor, Method yang pertama kali di panggil saat object di buat;

  Person(String paramName, String paramAddress) { // Untuk menjadikan parameter optional, cukup menjadikannya nullable
    name = paramName; // harus sama dengan nama field
    address = paramAddress;
  }
}

void main(List<String> args) {
  var person = Person("Agung Bahtiar", "Kalibaru");
  print(person.name);
  print(person.address);
}
