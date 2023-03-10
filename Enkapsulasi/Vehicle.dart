class Vehicle {
  late String _model;
  late int _year;

  String get model => _model; // Mempunyai tipe data karna return

  set model(String model) => _model = model; // punya parameter input digunakan untuk setter

  int get year => _year;

  set year(int year) => _year = year;
}

void main(List<String> args) {
  
  var revo = Vehicle();
  revo.model = "Sepeda";
  revo.year = 2010;

  print(revo.model);
  print(revo.year);
  
}
