import 'dart:io';

void main() {
  print("Enter bill total:");
  double billTotal = double.parse(stdin.readLineSync()!);

  print("Enter number of people:");
  int numberOfPeople = int.parse(stdin.readLineSync()!);

  double tipPercent = 10.0;

  if (numberOfPeople > 20) {
    print("Cannot split bill for more than 20 people.");
  } else {
    double tipAmount = billTotal * (tipPercent / 100);
    double totalBill = billTotal + tipAmount;

    double personPay = totalBill / numberOfPeople;
    int roundedPay = personPay.ceil();

    for (int i = 1; i <= numberOfPeople; i++) {
      if (i > 20) {
        break;
      }
      print("Person $i pays: $roundedPay dinars");
    }

    double leftoverCoins = (roundedPay * numberOfPeople) % totalBill;
    print("Leftover coins: $leftoverCoins");
  }
}