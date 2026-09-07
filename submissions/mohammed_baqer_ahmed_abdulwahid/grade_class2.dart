import 'dart:io';

void main() {
  //GradeClass using switch case statements
  print('Enter your grade:');
  String? grade = stdin.readLineSync();
  double? gradeValue = double.tryParse(grade ?? '');
  switch (gradeValue) {
    case var g when g != null && g >= 90:
      print('Your grade is A');
      break;
    case var g when g != null && g >= 80:
      print('Your grade is B');
      break;
    case var g when g != null && g >= 70:
      print('Your grade is C');
      break;
    case var g when g != null && g >= 60:
      print('Your grade is D');
      break;
    case var g when g != null && g < 60:
      print('Your grade is F');
      break;
  }
}
