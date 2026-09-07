import "dart:io";

void main() {
  int numberOfPeople;
  int bill;
  int tip = 10;

  print("number of people: ");
  numberOfPeople = int.parse(stdin.readLineSync()!);

  print("bill: ");
  bill = int.parse(stdin.readLineSync()!);

  int billAfterTip = (bill + (bill * tip / 100)).toInt();
  int whatEachPersonPays = billAfterTip ~/ numberOfPeople;
  int unpaidAmount = billAfterTip % numberOfPeople;

  print(
    "each one pays: $whatEachPersonPays as the total bill after the tip is $billAfterTip",
  );

  for (int i = 1; i <= numberOfPeople; i++) {
    print("Person $i pays: $whatEachPersonPays");
    if (i >= 20) {
      print("can not print more than 20 people");
      break;
    }
  }

  print("Unpaid amount because of integer division: $unpaidAmount");
}
