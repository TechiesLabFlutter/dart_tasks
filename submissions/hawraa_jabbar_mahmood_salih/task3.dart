import 'dart:io';

void main() {
  print("enter amount paid by the customer");
  String? input = stdin.readLineSync();
  if (input == null) return;
  double amountPaid = double.parse(input);

  double billTotal = 100;
  int people = 5;
  double tipPercent = 10;

  if (people > 20) {
    print("people is greater there aren't tables enough");
    return;
  }
  
  double totalWithTip = billTotal + (billTotal * (tipPercent / 100));
  print("the total is: $totalWithTip");

  int eachPerson = (totalWithTip / people).ceil();
  print("how much does each person pay:");

  for (int i = 1; i <= people; i++) {
    print("person $i pay: $eachPerson");
  }

  double remainingAmount = amountPaid - totalWithTip;
  print("back to customer / remaining amount is: $remainingAmount");
}
