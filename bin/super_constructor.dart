class Manager {
  String? name;

  Manager(String name) {
    this.name = name;
  }
}

class VicePresident extends Manager {
  VicePresident(String name) : super(name) {
    // Mengakses constructor yang ada di parent class
    print("Create new president");
  }
}

void main(List<String> args) {
  var manager = Manager("Agung");
  print(manager.name);

  var vicePresident = VicePresident("Bahtiar");
  print(vicePresident.name);

  /**
   * Output
   *  Agung
      Create new president
      Bahtiar
      Exited
   */
}
