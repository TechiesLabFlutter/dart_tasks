import 'dart:io';

void main() {


  print("enter total of the bill: ");
  double? billTotal = double.tryParse(stdin.readLineSync()!);

  print("enter the number of people");
  int? numberOfPeople = int.tryParse(stdin.readLineSync()!);
  int percentage = 10;

  bool tooManyPeople = false;

  if (billTotal == null || numberOfPeople == null) {
    print("Invalid input please try again");
    return;
  }

  double paymentWithTip = billTotal + (billTotal * percentage / 100);
  int payPerPerson = (paymentWithTip / numberOfPeople).ceil();
  double leftCoins = paymentWithTip % numberOfPeople;

  for(int i = 1; i <= numberOfPeople; i++) {
    if (numberOfPeople > 20) {
      print("Too many people");
      tooManyPeople = true;
      break;

      

    }
    print("person $i pays $payPerPerson");
  }

  if (!tooManyPeople){
    print("the leftover coins are $leftCoins");
  }

    
}

/*
- AI was not used to solve or construct the logic behind the program
- resources used:
1. https://dart.dev/null-safety/understanding-null-safety (i used this to understand null safety and how to workaround it).
2. https://www.geeksforgeeks.org/dart/dart-loop-control-statements-break-and-continue/ (understanding break and continue and how to implement them correctly).
3. i used return to stop the program from executing when an invalid input would be inserted, without it the program wouldn't have worked for null safety.
4. i used digitalize mobile gitbook to understand code snippets and apply the logic in my code.
*/