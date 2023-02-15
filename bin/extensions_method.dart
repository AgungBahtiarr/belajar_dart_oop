class Person {
  String name = "Agung";
  String? address;
  final String country = "Indonesia";

  void sayHello(String paramName) {
    print('Hello $paramName, My name is $name');
  }
}

// digunakan untuk menambahkan method tanpa merubah class utama
extension goodByeOnPerson on Person {
  void sayGoodBye(String paramName) {
    print("Good bye $paramName");
  }
}

void main(List<String> args) {
  Person person1 = Person();
  person1.sayHello("Ilham");
  person1.sayGoodBye("Ilham");
}
