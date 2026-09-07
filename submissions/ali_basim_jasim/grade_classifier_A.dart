
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
 if (score == null || score > 100)
{
  print ('pleas enter a valid score');
}
//شروط الدرجه
 else if (score !=null && score >=90)
  {
    print ('your name is : $name \n your grade is A');
  }else if (score !=null && score >=80)
{
  print ('your name is $name \n your grade is B');
}else if (score != null && score >=70)
{
  print ('your name is :$name \n your grade is C');
}else if (score !=null && score >=60)
{
  print ('your name is: $name \n your grade is D');
}else if (score !=null && score <60)
{
  print ('your name is :$name \n your grade is F');
}

  }
