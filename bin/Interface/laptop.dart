class Laptop {
  turnOnLaptop() => print('Laptop turned on');

  turnOffLaptop() => print("Laptop turned off");
}

class MacBook implements Laptop {
  @override
  turnOnLaptop() {
    print("MacBook turned on");
  }

  @override
  turnOffLaptop() {
    print("Macbook tunerd off");
  }
}

void main(List<String> args) {
  MacBook mac = MacBook();
  mac.turnOnLaptop();
  mac.turnOffLaptop();
}
