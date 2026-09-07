//1- Temprature convert

//import "dart:io";
//void main() {
/*
print("Enter a Celsius Temprature");
doubel celsius= double . parse(stadin.readLineSync());
double fahrenhiet = Celsius * 9/5+32;
print ("$Celsius c is $fahrenhiet");
*/

//2- part:Grade Classifier if&elss
//import 'dart:io';

//main() {
/*print("Einter your Score: ");
  double score = double.parse(stdin.readLineSync()!);
  if (score >= 90 && score <= 100) {
    print("Grade A");
  } else if (score >= 80 && score <= 89) {
    print("Grade B");
  } else if (score >= 70 && score <= 79) {
    print("Grade C");
  } else if (score >= 60 && score <= 69) {
    print("Grade D");
  } else if (score >= 50 && score <= 59) {
    print("Grade E");
  } else if (score >= 0 && score <= 49) {
    print("Grade F");
  } else {
    print("Erorre");
  }
}
*/
/* 2- part:Grade Classifier switch case
import 'dart:io';

void main() {
  print("Enter Your score");
  int score = int.parse(stdin.readLineSync()!);
  switch (score ~/ 10) {
    case 10:
    case 9:
      print("Grad A");
      break;
    case 8:
      print("Grade B");
    case 7:
      print("Grad C");
      break;
    case 6:
      print("Grad D");
      break;
    case 5:
      print("Grad E");
      break;
    case 4:
    case 3:
    case 2:
    case 1:
    case 0:
      print("Grade F");
      break;
    default:
      print("erorr");
      break;
  }
}
*/
// 3-Bill Splitter
/*
import 'dart:io';

void main() {
  double billTotal = 50000;
  int people = 5;
  double tipPercent = 10;
  double tip = billTotal * tipPercent / 100;
  double totalBill = billTotal + tip;
  double eachPerson = totalBill / people;
  int roundedAmount = eachPerson.ceil();
  for (int i = 1; i <= people; i++) {
    if (people > 20) {
      print("Too many people!");
      break;
    }
    print("Person $i pays $roundedAmount dinars");
  }
  int leftoverCoins = roundedAmount % 100;
  print("Leftover coins: $leftoverCoins");
}
*/