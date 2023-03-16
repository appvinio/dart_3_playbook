// https://github.com/dart-lang/language/blob/master/accepted/future-releases/0546-patterns/feature-specification.md

void chatGptKnowledge() {
  var obj;
  obj = 3;

  switch (obj) {
    case int i:
      print("Int: $i");
    // break; // We don't need it ;)
    case String s:
      print("String: $s");
    case bool b:
      print("bool: $b");
  }
}

void basicsPattern1() {
  var x;
  x = 3.0;

  switch (x) {
    case int():
      print("Int: $x");
    // break; // We don't need it ;)
    case double():
      print("Double: $x");
    case num():
      print("Num: $x");
    case String():
      print("String: $x");
    case bool():
      print("bool: $x");
  }
}

class Shape {}

class Circle extends Shape {
  double r;

  Circle(this.r);
}

class Square extends Shape {
  double a;

  Square(this.a);
}

void basicsPattern2() {
  Shape x;
  x = Circle(3);

  switch (x) {
    case Square(a: var a) when a > 3:
      print("Square bigger than 3");
    case Square():
      print("Square");
    case Circle():
      print("Circle");
  }
}

void basicsPattern3() {
  Shape x;
  x = Circle(3);

  switch (x) {
    case Square(a: var size) || Circle(r: var size) when size > 3:
      print("Square or Circle bigger than 3");
    case Square():
      print("Square");
    case Circle():
      print("Circle");
  }
}

void basicsPattern4() {
  int x = 3;

  switch (x) {
    case < 3:
      print("Int is less than 3");
    case >= 3 && < 7:
      print("Int is [3,7>");
    default:
      print("Some int");
  }
}

String basicsPattern5() {
  int x = 3;

  return switch (x) { < 3 => "Int is less than 3", >= 3 && < 7 => "Int is [3,7>", _ => "Some int" };
}

double basicsPattern6(Shape shape) =>
    switch (shape) { Square(a: var l) => l * l, Circle(r: var r) => 3.14 * r * r, _ => 0 };
