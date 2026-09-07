import 'dart:io';

void main() {
  print('Enter total price:');
  double price = double.parse(stdin.readLineSync()!);

  print('Enter number of people:');
  int people = int.parse(stdin.readLineSync()!);

  const double tipPercent = 10.0;
  double tipAmount = price * (tipPercent / 100);
  double totalPriceWithTip = price + tipAmount;
  double exactPerPerson = totalPriceWithTip / people;
  int basePayment = exactPerPerson.round();
  int baseTotalCollected = basePayment * people;
  int extraNeeded = 0;

  if (baseTotalCollected < totalPriceWithTip) {
    extraNeeded = (totalPriceWithTip - baseTotalCollected).ceil();
  }

  print('\n--- Fair Payment Breakdown ---');
  int totalCollected = 0;
  for (int i = 1; i <= people; i++) {
    int personPays = basePayment + (i <= extraNeeded ? 1 : 0);
    totalCollected += personPays;
    if (i <= 20) {
      print('Person $i pays: $personPays dinars');
    }
  }

  int totalCoinsNeeded = (totalPriceWithTip * 100).round();
  int totalCoinsCollected = totalCollected * 100;
  int totalLeftoverCoins = totalCoinsCollected - totalCoinsNeeded;
  int leftoverDinars = totalLeftoverCoins ~/ 100;
  int leftoverCoins = totalLeftoverCoins % 100;

  print('-----------------------');
  print('Total price with tip: ${totalPriceWithTip.toStringAsFixed(2)} dinars');
  print('Total collected: $totalCollected dinars');
  print('Leftover amount: $leftoverDinars dinars and $leftoverCoins coins');
}
