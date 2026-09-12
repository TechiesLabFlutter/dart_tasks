import "dart:io";

void main() {
  print('======= Bill Splitter =======');

  stdout.write("Enter the number of people: ");
  int noOfPeople = int.parse(stdin.readLineSync()!);

  stdout.write("Enter the bill amount: ");
  int bill = int.parse(stdin.readLineSync()!);

  stdout.write("Enter the tip percentage: ");
  double tip = double.parse(stdin.readLineSync()!);

  splitBill(total: bill.toDouble(), people: noOfPeople, tipPercent: tip);
}

splitBill({
  required double total,
  required int people,
  double tipPercent = 10,
}) {
  if (people > 20) {
    print('Too many people');
    return;
  }

  double tipAmount = (total * tipPercent) / 100;
  double totalWithTip = total + tipAmount;
  double eachPerson = totalWithTip / people;

  for (int i = 1; i <= people; i++) {
    print('Person $i pays: \$${eachPerson.toStringAsFixed(2)}');
  }
}
