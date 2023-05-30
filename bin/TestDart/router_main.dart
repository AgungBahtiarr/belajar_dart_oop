import 'mikrotik.dart';
import 'cisco.dart';

void main() {
  Mikrotik mikrotik = Mikrotik();
  mikrotik.routerName = "GR3";
  mikrotik.isGigabit = true;
  mikrotik.numbeOfPort = 5;
  mikrotik.operatingSystem = "Router Os";
  mikrotik.guiMangementSoftware = "winbox";
  mikrotik.updateSystem();
  mikrotik.restart();
  mikrotik.configureRouter();
  mikrotik.turnOn(mikrotik);

  Cisco cisco = Cisco();
  cisco.routerName = "C892FSP";
  cisco.isGigabit = true;
  cisco.numbeOfPort = 10;
  cisco.operatingSystem = "Cisco IOS";
  cisco.simulationSoftware = "Cisco Packet Tracer";
  cisco.updateSystem();
  cisco.restart();
  cisco.showNetworkMap();
  cisco.turnOn(cisco);
}
