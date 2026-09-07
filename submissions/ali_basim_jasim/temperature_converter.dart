// this cod made by Ali basim
import 'dart:io';
//هاي مكتبة لاستقبال المدخلات
void main(){
print('Hi this is a tamperatuer in celsius to convert it to fahrenhrit');
String? temp = stdin.readLineSync();
//هناه على مود استقبل كل انواع المدخلات
double? tem = double.tryParse(temp??'');
//استخدمت 
//try
// علمود خاف بستذكي المستخدم و ما يكتب رقم
if (tem !=null)
//ماخليت حد للارقام علمود خاف يحتاج الدرجه لصهر شي
{
  double fahrenhrit = tem * 9 / 5+32;
  print('the temperatuer in fahrenhrit is $fahrenhrit. ');
} else {
  print ('pleas enter a valid value');
}

}