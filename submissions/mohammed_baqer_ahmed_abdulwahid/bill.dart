void main() {
  // Declare three variables
  double billTotal = 150.50;
  int numberOfPeople = 5;
  int tipPercent = 10;
  double tipAmount = billTotal * (tipPercent / 100);
  double totalWithTip = billTotal + tipAmount;
  if (numberOfPeople > 20) {
    print("Too many people! Maximum is 20.");
  }
  double amountPerPerson = totalWithTip / numberOfPeople;
  int amountPerPersonRoundedUp = amountPerPerson.ceil();
  int totalCoins = (totalWithTip * 100).round();
  int totalRoundedUpCoins = amountPerPersonRoundedUp * numberOfPeople * 100;
  int leftoverCoins = totalRoundedUpCoins - totalCoins;
  for (int i = 1; i <= numberOfPeople; i++) {
    print("Person $i pays: $amountPerPersonRoundedUp IRD");
  }
  print(
    "Leftover coins: ${leftoverCoins ~/ 100} IRD and ${leftoverCoins % 100} cents",
  );
}
