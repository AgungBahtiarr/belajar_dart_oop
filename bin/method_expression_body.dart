class Computer {
  void startUp() => print("Komputer Menyala");
  void shutDown() => print("Komputer Mati");
  String getOs() => "Linux";
}

void main(List<String> args) {
  Computer myLenovo = Computer();
  myLenovo.startUp();
  print(myLenovo.getOs());
  myLenovo.shutDown();
}
