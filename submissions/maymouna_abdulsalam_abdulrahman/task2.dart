import 'dart:io';

void main() {
  print('Enter score (0-100):');
  var input = stdin.readLineSync();
  int score = int.parse(input!);

  if (score < 0 || score > 100) {
    print("Invalid score");
  } else {

    String grade1;
    
    if (score >= 90) {
      grade1 = "A";
      
    } else if (score >= 80) {
      grade1 = "B";

    } else if (score >= 70) {
      grade1 = "C";

    } else if (score >= 60) {
      grade1 = "D";

    } else {
      grade1 = "F";
    }
    
    print("rade using if/else: $grade1");
  
String grade2;

    switch (score ~/ 10) {
      case 10:
      case 9:

        grade2 = "A";
        break;
      case 8:

        grade2 = "B";
        break;
      case 7:

        grade2 = "C";
        break;
      case 6:

        grade2 = "D";
        break;
      default:

        grade2 = "F";
    }

    print("grade using switch: $grade2");
  }
}