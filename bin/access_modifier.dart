import 'data/product.dart';

void main(List<String> args) {
  Product data = Product();
  data.id = '1';
  data.name = 'kopi';
  // data._quantity = 1; Tidak bisa diakses karena merupakan private field
  // print(data._getQuantity()); error juga
}
