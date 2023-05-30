abstract class Area {
  void area();
}

abstract class Perimeter {
  void perimeter();
}

class Rectangle implements Area, Perimeter {
  int length, breadth;

  Rectangle(this.length, this.breadth);

  @override
  void area() => print("the area of the rectangle is ${length * breadth}");

  @override
  void perimeter() => print("the perimeter of the rectangle is ${2 * length + breadth}");
}

void main(List<String> args) {
  Rectangle rectangle = Rectangle(10, 20);
  rectangle.area();
  rectangle.perimeter();
}
