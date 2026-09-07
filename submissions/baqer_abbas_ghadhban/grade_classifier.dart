
//second task done :)

import 'dart:io';

String gradeWithSwitch(int score) {
  //here we convert the score we get to a grade using switch statement :)
  return switch (score ~/ 10) {
    10 || 9 => 'A',
    8 => 'B',
    7 => 'C',
    6 => 'D',
    _ => 'F',
  };
}

void main() {
  stdout.write('Enter a score (0-100): ');
  String? input = stdin.readLineSync();

  int? score = int.tryParse(input ?? '');

  if (score == null) {
    print('Please enter a valid whole number.');
    return;
  }

  if (score < 0 || score > 100) {
    print('Score must be between 0 and 100.');
    return;
  }

  
  String switchGrade = gradeWithSwitch(score);

 
  print('Switch grade: $switchGrade');

  
}
