import 'dart:io';
void main() {
 double celsius ;
 print("enter temp in celsius: ");
 celsius = double.parse(stdin.readLineSync()!);
 double frehnheit = (celsius * 9/5) + 32;
 print("$celsius°C is equal to $frehnheit°F");
}