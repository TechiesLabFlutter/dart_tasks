import 'dart:io';

void main() {
  print('======= Grade Classifier =======');
  stdout.write('Enter your score (0-100): ');

  final int? score = int.tryParse(stdin.readLineSync() ?? '');
  if (score == null) {
    print('Invalid input! Please enter a valid integer score.');
    return;
  }
  if (score < 0 || score > 100) {
    print('Invalid score! Scores outside 0-100 are rejected.');
    return;
  }

  // My ego prevented me from stealing the below code from one of my classmates, lol.
  // int category = score ~/ 10;

  int category = (score / 10).floor();
  switch (category) {
    case 10:
    case 9:
      print('Grade: A');
      break;
    case 8:
      print('Grade: B');
      break;
    case 7:
      print('Grade: C');
      break;
    case 6:
      print('Grade: D');
      break;
    default:
      print('Grade: F');
  }
}
