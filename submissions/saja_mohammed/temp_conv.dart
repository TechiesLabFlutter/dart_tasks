
import 'dart:io';

void main() {

  const double offset = 32.0;

  print('Enter temperature in Celsius:');

  final String? input = stdin.readLineSync();
  final double celsius = double.parse(input!) ;    
  final double fahrenheit = (celsius * 9 / 5) + offset;

  // طباعة النتيجة باستخدام String interpolation
  print('$celsius°C is equal to $fahrenheit°F');
}




