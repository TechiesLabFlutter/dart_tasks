import 'dart:io';

void main() {
  stdout.write("Enter the temperature in C: ");
  double? tempInCelsius = double.tryParse(stdin.readLineSync() ?? '');

  if (tempInCelsius == null) {
    print("Invalid temperature value. Plese enter a valid number.");
    return;
  }
  double tempInFahrenheit = (tempInCelsius * (9 / 5)) + 32;

  stdout.writeln("Temperature: $tempInCelsius °C");
  stdout.writeln("Temperature: $tempInFahrenheit °F");
}
