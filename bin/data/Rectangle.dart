class Rectangle {
  int? _width;
  int? _length;

  int get width {
    // Getter
    return _width!;
  }

  int get length {
    return _length!;
  }

  set width(int width) {
    // Setter
    _width = width;
  }

  set length(int length) {
    _length = length;
  }

  int get luas {
    return width * length;
  }
}
