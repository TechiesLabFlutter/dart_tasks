void main() {
  print('Grade Classifier');
  print('Grade (if-else) for 85: ${gradeClassifier(85)}');
  print('Grade (switch) for 85: ${gradeClassifierSwitch(85)}');
  print('Grade (switch) for 75: ${gradeClassifierSwitch(75)}');
  print('Grade (switch) for 65: ${gradeClassifierSwitch(65)}');
}

String gradeClassifier(double score) {
  if (score <= 0 || score > 100) {
    throw ArgumentError(
      'Score must be between 1 and 100 (0 and values >100 are rejected).',
    );
  }
  if (score >= 90) {
    return 'A';
  } else if (score >= 80) {
    return 'B';
  } else if (score >= 70) {
    return 'C';
  } else if (score >= 60) {
    return 'D';
  } else {
    return 'F';
  }
}

String gradeClassifierSwitch(double score) {
  if (score <= 0 || score > 100) {
    throw ArgumentError(
      'Score must be between 1 and 100 (0 and values >100 are rejected).',
    );
  }

  // Use the score's decile to switch between grade buckets.
  // floor() handles fractional scores (e.g., 89.9 -> 89 -> decile 8).
  final int decile = (score.floor()) ~/ 10;

  switch (decile) {
    case 10:
    case 9:
      return 'A';
    case 8:
      return 'B';
    case 7:
      return 'C';
    case 6:
      return 'D';
    default:
      return 'F';
  }
}
