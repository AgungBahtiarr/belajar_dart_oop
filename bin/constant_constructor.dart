class ImmutablePoint {
  final int x;
  final int y;

  const ImmutablePoint(this.x, this.y);
}

void main(List<String> args) {
  var point1 = const ImmutablePoint(10, 5);
  var point2 = const ImmutablePoint(10, 5);

  print(point1 == point2);
}
