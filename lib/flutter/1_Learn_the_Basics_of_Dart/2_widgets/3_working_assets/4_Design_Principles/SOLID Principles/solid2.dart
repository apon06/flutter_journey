// /! Open/Closed Principle
// class Shape {
//   String type;
//   Shape(this.type);
// }
// class AreaCalculetor {
//   double calculeteArea(Shape shape) {
//     if (shape.type == 'circle') {
//       return 3.14 * 3.14;
//     } else if (shape.type == 'rectangle') {
//       return 4 * 5;
//     }
//     return 0;
//   }
// }
// void main() {
//   print(AreaCalculetor().calculeteArea(Shape('circle')));
// }

abstract interface class Shape {
  double calculeteArea();
}

class Circle implements Shape {
  double reduis;
  Circle(this.reduis);
  @override
  double calculeteArea() {
    return 3.1416 * reduis * reduis;
  }
}

class Rectangle implements Shape {
  double length;
  double breadth;
  Rectangle(this.length, this.breadth);
  @override
  double calculeteArea() {
    return length * breadth;
  }
}

class Square implements Shape {
  double side;
  Square(this.side);
  @override
  double calculeteArea() {
    return side * side;
  }
}

class AreaCalculetor {
  double calculeteArea(Shape shape) {
    return shape.calculeteArea();
  }
}
