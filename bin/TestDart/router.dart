 class Router {
  String? _routerName;
  int? _numberOfPort;
  bool? _isGigabit;
  String? _operatingSystem;

  void updateSystem() {
    print("updating $_routerName system");
  }

  void restart() {
    print("restarting $_routerName system");
  }

  void turnOn(Router router) {
    print("${router.routerName} is turnedOn");
  }

  // Setter Getter
  String get routerName => _routerName!;
  int get numberOfPort => _numberOfPort!;
  bool get isGigabit => _isGigabit!;
  String get operatingSystem => _operatingSystem!;

  set routerName(String routerName) => _routerName = routerName;
  set numbeOfPort(int numberOfPort) => _numberOfPort = numberOfPort;
  set isGigabit(bool isGigabit) => _isGigabit = isGigabit;
  set operatingSystem(String operatingSystem) =>
      _operatingSystem = operatingSystem;
}
