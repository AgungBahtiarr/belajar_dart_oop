import 'inheritance.dart';

class Employee {
  String name;
  Employee(this.name);
}

class Manager extends Employee {
  Manager(String name) : super(name);
}

class VicePresident extends Manager {
  VicePresident(String name) : super(name);
}

void sayHello(Employee employee) {
  if (employee is Manager) {
    Manager manager = employee as Manager;
    print('Hello manager ${employee.name}');
  } else if (employee is vicePresident) {
    VicePresident vicePresident = employee as VicePresident;
    print('Hello vice president ${employee.name}');
  } else {
        print('Hello ${employee.name}');
  }
}

void main(List<String> args) {
  // Tidak hanya mengirim parent class saja namun bisa mengirim untuk turunannya
  sayHello(Employee('Agung'));
  sayHello(Manager('Ilham'));
  sayHello(VicePresident("Rapi"));
}
