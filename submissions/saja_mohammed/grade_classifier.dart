import 'dart:io';

void main() {
  print('Enter your score (0 to 100):');
  final String? input = stdin.readLineSync();
  final int score = int.parse(input!);

  if (score < 0 || score > 100) {
    print('Invalid score! Scores outside 0-100 are rejected.');
  } else {
    
    print('\n--- Using If/Else ---');
    if (score >= 90) {
      print('Grade: A');
    } else if (score >= 80) {
      print('Grade: B');
    } else if (score >= 70) {
      print('Grade: C');
    } else if (score >= 60) {
      print('Grade: D');
    } else {
      print('Grade: F');
    }

    
    print('\n--- Using Switch ---');
    final int category = score ~/ 10;

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
}