import 'router.dart';

class Mikrotik extends Router {
  String? _guiMangementSoftware;

  void configureRouter() {
    print("Router Configured With $_guiMangementSoftware");
  }
  

  String get guiMangementSoftware => _guiMangementSoftware!;
  set guiMangementSoftware(String guiMangementSoftware) =>  _guiMangementSoftware = guiMangementSoftware;
}