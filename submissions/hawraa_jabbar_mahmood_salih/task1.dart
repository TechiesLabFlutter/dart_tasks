import 'dart:io';

void main() {
  print("temporary degree:");
  String? input = stdin.readLineSync()!;
  double value = double.parse(input);
  double result = (value * 9 / 5) + 32;
  print("the temporary in fahrenheite is:$result");
}