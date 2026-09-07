void main() {
  splitBill(123, 5, 10);
}

void splitBill(int billTotal, int people, int tipPercent) {
  if (people > 20) {
    print('Too many people to split the bill.');
    return;
  }

  int totalWithTip = billTotal + (billTotal * tipPercent ~/ 100);
  int perPerson = totalWithTip ~/ people;
  int leftoverCoins = totalWithTip % people;

  for (int person = 1; person <= people; person++) {
    if (person > 20) {
      print('Too many people to split the bill.');
      break;
    }

    print('Person $person pays $perPerson dinars');
  }

  print('Leftover coins: $leftoverCoins');
}
