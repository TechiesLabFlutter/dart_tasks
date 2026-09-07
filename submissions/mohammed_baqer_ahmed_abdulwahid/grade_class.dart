import 'dart:io';

void main() {
  //GradeClass using if-else statements
  print('Enter your grade:');
  String? grade = stdin.readLineSync();
  double? gradeValue = double.tryParse(grade ?? '');
  if (gradeValue! >= 90) {
    print('Your grade is A');
  } else if (gradeValue >= 80) {
    print('Your grade is B');
  } else if (gradeValue >= 70) {
    print('Your grade is C');
  } else if (gradeValue >= 60) {
    print('Your grade is D');
  } else {
    print('Your grade is F');
  }
}
