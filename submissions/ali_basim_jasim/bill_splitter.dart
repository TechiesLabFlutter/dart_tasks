void main (){
  List <String> names = ['ali','basim','jasim','alaa'];
  //اسماء الحضور
  int bill_price = 200;
  double the_tip =  bill_price * 0.10;
  //حساب قيمة البقشيش
double totlbill = the_tip  +  bill_price ;
//حساب الفاتورة الكامل
double person_pay = (totlbill / 4) ;
//تقسيم الدفع
for (int i =0; i<=3 ;i++){
if(i<=20)
//شرط عدد الحضور
{
print(names[1]+ ' has to pays $person_pay ' );}
else{
  break;
}
}
double the_change =totlbill % 4;
//حساب لباقي
print('the change = $the_change');

}
