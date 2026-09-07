import 'dart:io';

void main() {
  print("Enter the temperature in C: ");

  String? input = stdin.readLineSync();
  double? temperatureC = double.tryParse(input ?? '');

  if (temperatureC != null) {
    double temperatureF = temperatureC * 9 / 5 + 32;

    print("The temperature in C is $temperatureC");
    print("The temperature in F is $temperatureF");
  } else {
    print("Invalid temperature entered. Please enter a valid number.");
  }
}
