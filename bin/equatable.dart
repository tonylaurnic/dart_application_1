import 'package:equatable/equatable.dart';

class Point extends Equatable {
  final int x;
  final int y;
  const Point(
    this.x,
    this.y,
  );

  @override
  bool? get stringify => true;

  @override
  List<Object> get props => [x, y];

  Point operator +(Point other) {
    return Point(x + other.x, y + other.y);
  }

  Point operator *(int other) {
    return Point(x * other, y * other);
  }
}

void main() {
  print(Point(1, 1) == Point(1, 1));
  print(Point(1, 1));
}
