import 'dart:io';
//هاي مكتبة لاستقبال المدخلات
void main(){

  print ('pleas enter your name :');
  String? name =stdin.readLineSync();
  print ('enter your score pleas');
  String? score_test = stdin.readLineSync();
  //هناه على مود استقبل كل انواع المدخلات
  int? score = int.tryParse(score_test??'');
  //استخدمت 
//try
// علمود خاف بستذكي المستخدم و ما يكتب رقم

switch (score)
{
  case 100 ||90:
  print ('your name is : $name \n your grade is A');
  break;
case 80:
  print ('your name is : $name \n your grade is B');
  break;
case 70:
  print ('your name is : $name \n your grade is C');
  break;
case 60:
  print ('your name is : $name \n your grade is D');
  break;
  case 0:
  print ('your name is : $name \n your grade is F');
  break;
  default:
   print ('pleas enter a valid score');
}
}