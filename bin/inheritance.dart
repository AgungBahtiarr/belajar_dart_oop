class Manager {
  String? name;

  void sayHello(String name) {
    print("Hello $name, my name is ${this.name}");
  }
}

class vicePresident extends Manager {}

void main(List<String> args) {
  var mnger = Manager();
  mnger.name = "Agung Bahtiar";
  mnger.sayHello("Ilham");

  var vc = vicePresident();
  vc.name = "yogi";
  vc.sayHello("Falen");
}
