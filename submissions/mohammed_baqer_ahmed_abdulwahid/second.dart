import 'dart:io';

void main() {
  //convert bettween celsius and fahrenheit(we can add kelvin later)
  print('Enter the temperature in celsius:\n');
  String? celsius = stdin.readLineSync();
  double celsiusdouble = double.parse(celsius!);
  double fahrenheit = (celsiusdouble * 9 / 5) + 32;
  print('The temperature in fahrenheit is: $fahrenheit');
}
