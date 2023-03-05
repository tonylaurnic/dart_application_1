import 'dart:math';

abstract class Shape {
  double get area;
  // empty class constructor
  Shape();

  factory Shape.fromJson(Map<String, dynamic> json) {
    final type = json['type'];
    switch (type) {
      case 'square':
        final side = json['side'];
        if (side is double) {
          return Square(side);
        }

        throw UnsupportedError('invalid or missing side property');

      case 'circle':
        final radius = json['radius'];
        if (radius is double) {
          return Circle(radius);
        }
        throw UnsupportedError('invalid or missing radius property');

      default:
        throw UnsupportedError('shape $type not reconized');
    }
  }
}

class Square extends Shape {
  Square(this.side);
  final double side;

  @override
  double get area => side * side;
}

class Circle extends Shape {
  Circle(this.radius);
  final double radius;

  @override
  double get area => pi * radius * radius;
}

void printArea(Shape shape) {
  print(shape.area);
}

void main() {
  final shapeJson = [
    {
      'type': 'square',
      'side': 10.0,
    },
    {
      'type': 'circle',
      'radius': 5.0,
    },
  ];
  final shapes = shapeJson.map((shapeJson) => Shape.fromJson(shapeJson));
  shapes.forEach(printArea);
}
