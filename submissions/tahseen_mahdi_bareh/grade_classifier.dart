import "dart:io";
void main() {
  print("enter marks: ");
  
  int marks = int.parse(stdin.readLineSync()!);
  while (marks < 0 || marks > 100) {
    print("Not possible to get $marks marks the range is between 0 and 100 enter again: ");
    marks = int.parse(stdin.readLineSync()!);
  }

  String grade;

  if (marks >= 90) {
    grade = "A";
  } else if (marks >= 80) {
    grade = "B";
  } else if (marks >= 70) {
    grade = "C";
  } else if (marks >= 60) {
    grade = "D";
  } else {
    grade = "F";
  }
  print("grade using if statement:$grade");

  int gradeScaled = marks ~/ 10;
  String gradeSwitch;
  switch (gradeScaled) {
    case 10:
    case 9:
      gradeSwitch = "A";
      break;
    case 8:
      gradeSwitch = "B";
      break;
    case 7:
      gradeSwitch = "C";
      break;
    case 6:
      gradeSwitch = "D";
      break;
    default:
      gradeSwitch = "F";
  }
  print("grade using switch statement:$gradeSwitch");
  if (grade != gradeSwitch) {
    print("grades do not match possible logical error");
  } else {
    print("grades match");
  }
}