import 'dart:io';

void main() {
  while (true) {
    print("Enter the way to calculate : \n1) without Approximately \n2) with Approximately\nYour choice: ");
    int? number = int.tryParse(stdin.readLineSync() ?? '');

    if (number == 1) {
      while (true) {
        print("Enter your score or the score you want to calculate : ");
        int? score = int.tryParse(stdin.readLineSync() ?? '');

        if (score == null) {
          print("unavailable number , try again");
          print("===============================");
        } else if (score > 100) {
          print(" who are a genius to broke the borders , Enter your real score");
          print("===============================");
        } else if (score >= 90) {
          print(" you got A in the exam congratulation future doctor ");
          break;
        } else if (score >= 80) {
          print(" you got B in the exam congratulation");
          break;
        } else if (score >= 70) {
          print(" you got C in the exam good but you should study harder");
          break;
        } else if (score >= 60) {
          print(" you got D in the exam study harder next time I know you can do it");
          break;
        } else if (score >= 0) {
          print(" you got F in the exam you failed good luck next time ");
          break;
        } else {
          print("unavailable number , try again ");
          print("===========================");
        }
      }
      break;
    } else if (number == 2) {
      while (true) {
        print("Enter your score or the score you want to calculate : ");
        int? score = int.tryParse(stdin.readLineSync() ?? '');

        if (score == null || score < 0) {
          print("unavailable number , try again ");
          print("===========================");
        } else if (score > 100) {
          print(" who are a genius to broke the borders , Enter your real score");
          print("===============================");
        } else {
          switch (score ~/ 10) {
            case 10:
            case 9:
              print(" you got A in the exam congratulation future doctor ");
              break;
            case 8:
              print(" you got B in the exam congratulation");
              break;
            case 7:
              print(" you got C in the exam good but you should study harder");
              break;
            case 6:
              print(" you got D in the exam study harder next time I know you can do it");
              break;
            default:
              print(" you got F in the exam you failed good luck next time ");
              break;
          }
          break;
        }
      }
      break;
    } else {
      print(" unavailable number , try again");
    }
  }
}
