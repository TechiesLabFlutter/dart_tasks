import 'dart:io';

void main() {
  stdout.write("Enter score (0-100): ");
  int score = int.parse(stdin.readLineSync()!);

  if (score < 0 || score > 100) {
    print("Error: Score must be between 0 and 100.");
    return;
  }

  // 1. If / Else If
  if (score >= 90) {
    print("Grade: A");
  } else if (score >= 80) {
    print("Grade: B");
  } else if (score >= 70) {
    print("Grade: C");
  } else if (score >= 60) {
    print("Grade: D");
  } else {
    print("Grade: F");
  }

  // 2. Switch
  switch (score ~/ 10) {
    case 10:
    case 9:
      print("Grade: A");
      break;
    case 8:
      print("Grade: B");
      break;
    case 7:
      print("Grade: C");
      break;
    case 6:
      print("Grade: D");
      break;
    default:
      print("Grade: F");
      break;
  }
}

