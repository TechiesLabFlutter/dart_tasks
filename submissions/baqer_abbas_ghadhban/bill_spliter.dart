//third task done :)

void splitBill({
  required double total,
  required int people,
  double tipPercent = 10,
}) {
  if (people <= 0) {
    print('Invalid number of people.');
    return;
  }

  final tip = total * (tipPercent / 100);
  final totalWithTip = total + tip;
  final amountPerPerson = (totalWithTip / people).ceil();
  for (int person = 1; person <= people; person++) {
    print('Person $person owes $amountPerPerson IQD');
    final exactShare = totalWithTip / people;
    final wholePart = exactShare.floor();
    final leftoverCoins = (exactShare * 1000).round() % (wholePart * 1000);
    print('  Leftover coins: $leftoverCoins');
    if (people > 20) {
      print('Stopping: the bill has more than 20 people.');
      break;
    }
  }
}

void main() {
  //u can call the function here with different values to test it out :)
  
  splitBill(total: 60000, people: 7);//test 1 valed data
  print('');
  splitBill(total: 50000, people: 0);//test 2 invalid number of data
}
