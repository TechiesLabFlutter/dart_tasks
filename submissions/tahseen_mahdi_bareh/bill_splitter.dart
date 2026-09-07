import "dart:io";
void main() {
  int numberOfPeople;
  int bill;
  int tip=10;

  print("number of people: ");
  numberOfPeople = int.parse(stdin.readLineSync()!);

  print("bill: ");
  bill = int.parse(stdin.readLineSync()!);

  int billAfterTip = (bill + (bill * tip / 100))~/1;
  int whatEachPersonPays = billAfterTip ~/ numberOfPeople;
  int remainder = billAfterTip;

  print("each one pays: $whatEachPersonPays as the total bill after the tip is $billAfterTip");

  for(int i=1; i<=numberOfPeople; i++){
    remainder -= whatEachPersonPays;
    print("Person $i pays: $whatEachPersonPays and the remainder is $remainder");
    if (i>=20){
      print("can not print more than 20 people ");
      break;
      
    }
  }
}