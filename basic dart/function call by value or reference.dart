

//call by value
void increment(int value) {
  value += 1;
  print("Inside function: $value");
}

//call by reference

class Point {
  int x, y;
  Point(this.x, this.y);
}

void move(Point point) {
  point.x += 1;
  point.y += 1;
  print("Inside function: (${point.x}, ${point.y})");
}



void main() {

  print("Call by Value:\n");
  int number = 5;
  print("Before function call: $number");
  increment(number);
  print("After function call: $number");

  print("\n\nCall by Reference:\n");
  Point p = Point(2, 3);
  print("Before function call: (${p.x}, ${p.y})");
  move(p);
  print("After function call: (${p.x}, ${p.y})");
}
