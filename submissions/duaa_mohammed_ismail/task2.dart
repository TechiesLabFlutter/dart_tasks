 import 'dart:io';

void main() {
  stdout.write('Enter score (0-100) :');
  int score =int.parse(stdin.readLineSync()!);

if(score < 0|| score > 100){
  print('Invalid score!!');
  print('please enter a number between 0 and 100.');
  return;
}

String grade;
if(score >=90){
  grade ='A';
}else if(score >=80){
  grade ='B';
}else if(score >=70){
  grade ='C';
}else if(score >=60){
  grade ='D';
}else{
  grade ='F';
}
print('Grade (IF):$grade ');

//switch
String gradeS;
switch(score ~/ 10){
  case 10:
  case 9:
  gradeS='A';
  break;
  case 8:
  gradeS='B';
  break;
  case 7:
  gradeS='C';
  break;
  case 6:
  gradeS='D';
  break;
  default:
  gradeS='F';
  break;
}
print('Grade (Switch):$gradeS');
  
}