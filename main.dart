void main() {
  double billTotal = 150.0;
  int people = 4;
  int tipPercent = 10;

  double totalWithTip = billTotal + (billTotal * tipPercent / 100);
  int perPerson = (totalWithTip / people).ceil();

  for (int i = 1; i <= people; i++) {
    print("Person $i pays: $perPerson dinars");
  }
}