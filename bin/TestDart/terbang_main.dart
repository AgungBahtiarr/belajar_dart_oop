import 'pesawat.dart';
import 'naga.dart';
import 'terbang.dart';

void main() {
  Naga naga = Naga();
  naga.terbang();
  naga.menyemburkanApi();

  Pesawat pesawat = Pesawat();
  pesawat.engineOn();
  pesawat.terbang();

  InterfaceTerbang terbang = pesawat;

  

}
