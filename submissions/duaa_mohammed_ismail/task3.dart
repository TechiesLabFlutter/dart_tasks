void main() {
  double billTotal =430.0 ;
  int people =4;
  int tipPercent = 10;

  if(people > 20){
    print(' The group has exceded !! the maximum permitted limit of 20 people.');
    return;
  }
  
  double grandTotal = billTotal + (billTotal*tipPercent/100);
  int personPer = (grandTotal / people).ceil();
  int gTotalInt = grandTotal.toInt();
  int remaining = gTotalInt % people;
  
  print(' Bill Total : $grandTotal Dinars .');
  print('Each person pays :$personPer Dinars. \n');

  for(int i=1 ; i<=people; i++){
    print('person $i pays $personPer Dinars.');
  }

  print('\n Remaining coins: $remaining Dinars.');

}