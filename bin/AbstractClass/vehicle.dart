abstract class Vehicle {
  void start();

  void stop();
}

class Car extends Vehicle {
  @override
  void start() => print("Car Started");
  @override
  void stop() => print("Car Stopped");
}

class Bike extends Vehicle {
  @override
  void start() {
    print("bike start");
  }

  @override
  void stop() {
    print("bike stop");
  }
}

void main(List<String> args) {
  Car car = Car();
  car.start();
  car.stop();

  Bike bike = Bike();
  bike.start();
  bike.stop();
}
