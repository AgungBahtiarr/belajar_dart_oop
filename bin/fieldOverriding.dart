class Person {
  String name = "Agung";

  void sayHello(String name) {
    print("Hello $name, my name is ${this.name}");
  }
}

class OtherPerson extends Person {
  String name = "Ilham";
}

void main(List<String> args) {
  var person1 = Person();
  person1.sayHello("heru");

  var person2 = OtherPerson();
  person2.sayHello("yogi");
}
