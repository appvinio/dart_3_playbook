// https://github.com/dart-lang/language/blob/master/accepted/future-releases/records/records-feature-specification.md

var tuple = ("first", 2, true);

var record1 = (number: 123, name: "Main", type: "Street");

var record2 = (1, a: 2, 3, b: 4);

var record3 = ("ape", a: "bat", "cat", b: "dog");

void test() {
  print(record3.$1); // Prints "ape".
  print(record3.a); // Prints "bat".
  print(record3.$2); // Prints "cat".
  print(record3.b); // Prints "dog".
}
