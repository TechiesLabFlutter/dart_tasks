//first task done :)

import 'dart:io';

double celsiusToFahrenheit(double c) {
  return (c * 9 / 5) + 32;
}

void main() {
  stdout.write('Enter temperature in Celsius: ');
  String? input = stdin.readLineSync();

  double? celsius = double.tryParse(input ?? '');

  if (celsius == null) {
    print('Please enter a valid number.');
    return;
  }

  double fahrenheit = celsiusToFahrenheit(celsius);

  print('$celsius°C is $fahrenheit°F');
}
