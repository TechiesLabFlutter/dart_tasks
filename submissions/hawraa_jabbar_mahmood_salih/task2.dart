// import 'dart:io';

// void main() {

//   String? input = stdin.readLineSync();

//   double value = double.parse(input!);

//   if (value >= 0 && value <= 100) {

//     if (value >= 90) {

//       print("APPRECIATION:A");

//     } else if (value >= 80) {

//       print("APPRECIATION:B");

//     } else if (value >= 70) {

//       print("APPRECIATION:C");

//     } else if (value >= 60) {

//       print("APPRECIATION:D");

//     } else {

//       print("APPRECIATION:F");

//     }

//   } else {

//     print("Invalid value");

//   }

// }
import 'dart:io';

void main() {
  String? input = stdin.readLineSync()!;
  double? value = double.parse(input);
  if (value >= 0 && value <= 100) {
    switch (value ~/ 10) {
      case 10:
      case 9:
        print("APPRECIATION:A");
        break;
      case 8:
        print("APPRECIATION:B");
        break;
      case 7:
        print("APPRECIATION:C");
        break;
      case 6:
        print("APPRECIATION:D");
        break;
      default:
        print("APPRECIATION:F");
        break;
    }
  } else {
    print("the value is invald");
  }
}
