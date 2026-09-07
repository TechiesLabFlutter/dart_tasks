import 'dart:io';
void main() {
  print("enter your grade: ");
  double grade = double.parse(stdin.readLineSync()!);
  while (grade < 0 || grade > 100) {
    print("rejected grade . enter again your graade: ");
    grade = double.parse(stdin.readLineSync()!);
  }
  /*
  if (grade >= 90) {
    print("A");
  } else if (grade >= 80) {
    print("B");
  } else if (grade >= 70) {
    print("C");
  } else if (grade >= 60) {
    print("D");
  } else {
    print("F");
  }
  */
  switch(grade ~/ 10) {
    case 10:
    case 9:
      print("A");
      break;
    case 8:
      print("B");
      break;
    case 7:
      print("C");
      break;
    case 6:
      print("D");
      break;
    default:
      print("F");
  }
}