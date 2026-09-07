import 'dart:io';

void main() {

     print("Enter your numeric grade : ");
     var numericGrade = int.tryParse(stdin.readLineSync()!);
     
     if (numericGrade == null || numericGrade < 0 || numericGrade > 100) {
      print("Invalid Input");
     }
     else if (numericGrade >= 90 ){
      print("You scored A");
     }
     else if (numericGrade >= 80 ){
      print("You scored B");
     }
     else if (numericGrade >= 70 ){
      print("You scored C");
     }
     else if (numericGrade >= 60 ){
      print("You scored D");
     }
     else{
      print("You scored F");
     }
/*
     switch (numericGrade) {
      case null || < 0 || > 100:
         print("Invalid Input");
      case >= 90:
         print("You scored A");
      case >= 80:
         print("You scored B");
     case >= 70:
          print("You scored C");
      case >= 60:
          print("You scored D");
      default:
          print("You scored F");
  }
*/
}

/*
as both codes give the same result toggle comments between them to make sure both work correctly (when you want to check the if case turn switch into comment and vice versa).
like the previous task, AI was not used at all.
resources used are the same as the tempreature converter task except for a new one:
https://stackoverflow.com/questions/72927465/dealing-with-multiple-condition-if-statement-in-dart 
(it gave me the idea of using logical operators to make multiple conditions in the if statement & switch to treat integeres larger than a 100 and smaller than 0 as invalid inputs)
*/