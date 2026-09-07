import 'dart:io';
void main() {
  int people ;
  int billtotal;
  int tip = 10; ;
  var rest ;
  people = int.parse(stdin.readLineSync()!);
  print("enter bill total: ");
  billtotal = int.parse(stdin.readLineSync()!);
  double total = (billtotal /100)*tip + billtotal;
  double result = total / people;
  rest = total;
  print ("each person should pay: ${result.toStringAsFixed(0)}");
  for (int i = 0; i < people; i++) {
    rest-= result;
     print("person ${i+1} should pay: ${result.toStringAsFixed(0)}");
     print("rest amount: ${rest.toStringAsFixed(0)}");
    if (i >=19){
    break;
    }
  }
}


























