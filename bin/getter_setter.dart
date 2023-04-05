import 'data/Rectangle.dart';

void main(List<String> args) {
  Rectangle rectangle = Rectangle();

  rectangle.width = 200;
  rectangle.length = 200;

  print(rectangle.width);
  print(rectangle.length);
  print(rectangle.luas);
}
