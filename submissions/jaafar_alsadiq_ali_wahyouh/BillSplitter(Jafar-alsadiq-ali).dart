void main() {
  double billTotal = 100000;
  int people = 5;
  int tipPercent = 10;
  double tipAmount = billTotal * tipPercent / 100;
  double total = billTotal + tipAmount;
  for (int i = 1; i < people; i++) {
  if (people > 20 ){
  print('too many people');
  break; }
  double eachPerson = total / people;
  print('person $i pay $eachPerson');
  }
}