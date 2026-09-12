import "dart:io";

void main() {
  print('======= Bill Splitter =======');

  stdout.write("Enter the number of people: ");
  int noOfPeople = int.parse(stdin.readLineSync()!);

  stdout.write("Enter the bill amount: ");
  double bill = double.parse(stdin.readLineSync()!);

  stdout.write("Enter the tip percentage: ");
  double tip = double.parse(stdin.readLineSync()!);

  if (noOfPeople <= 0 || bill < 0 || tip < 0) {
    print('Invalid input! Please enter positive values.');
    return;
  }
  splitBill(total: bill, people: noOfPeople, tipPercent: tip);
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
