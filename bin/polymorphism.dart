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

void main(List<String> args) {
  Employee employee = Employee("Agung");
  print(employee);

  // Perubahan bentuk karna mempunyai banyak turunan
  employee = Manager("Ilham");
  print(employee);

  employee = VicePresident("Rapii");
  print(employee);
}
