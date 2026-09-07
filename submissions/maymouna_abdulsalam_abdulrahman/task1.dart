import 'dart:io';
void main() {

  print("Enter the temperature in Celsius:");
  var input = stdin.readLineSync();
  double celsius = double.parse(input!);


  double fahrenheit =  celsius * 9 / 5 + 32;

 
  print("Temperature $celsius Celsius Equals $fahrenheit  Fahrenheit");
}
