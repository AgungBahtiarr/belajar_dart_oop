import 'router.dart';

class Cisco extends Router {
  String? _simulationSoftware;

  void showNetworkMap() {
    print("Simulating network map with $_simulationSoftware");
  }

  String get simulationSoftware => _simulationSoftware!;
  set simulationSoftware(String simulationSoftware) => _simulationSoftware = simulationSoftware;
}
