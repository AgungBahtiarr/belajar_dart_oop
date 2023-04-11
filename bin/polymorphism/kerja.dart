import 'Manusia.dart';
import 'Mahasiswa.dart';

void main(List<String> args) {
  Manusia manusia = Manusia();
  manusia.name = "Agung Bahtiar";
  manusia.beratBadan = 60;

  Mahasiswa mahasiswa = Mahasiswa();
  mahasiswa.nim = "362258302093";
  mahasiswa.name = "Agung";
  mahasiswa.beratBadan = 60;

  List<Manusia> daftarManusia = [manusia, mahasiswa];

  for (var manusia in daftarManusia) {
    manusia.pekerjaan();
  }
  
}
