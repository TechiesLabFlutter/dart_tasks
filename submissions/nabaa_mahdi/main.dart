import 'dart:io';

void main() {
  print("Enter temperature in Fahrenheit:");
  double f = double.parse(stdin.readLineSync()!);
  double c = (f - 32) * 5 / 9;
  print("The temperature is $c Celsius.");
}
