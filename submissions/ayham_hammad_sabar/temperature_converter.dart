void main() {
  print('Temperature Converter');
  print('Celsius to Fahrenheit: ${temperatureConverter(celsius: 40)}');
  print('Fahrenheit to Celsius: ${temperatureConverter(fahrenheit: 92)}');
}

double temperatureConverter({double? celsius, double? fahrenheit}) {
  if (celsius != null) {
    return (celsius * 9 / 5) + 32; // Convert Celsius to Fahrenheit
  } else if (fahrenheit != null) {
    return (fahrenheit - 32) * 5 / 9; // Convert Fahrenheit to Celsius
  } else {
    throw ArgumentError('Either celsius or fahrenheit must be provided.');
  }
}
