import 'dart:io';
void main() {

    String tempInCel;
    print("Enter temperature in Celsius: ");
    tempInCel = stdin.readLineSync()!;
    var convertedType = double.tryParse(tempInCel);

    if (convertedType == null) {
        print("Invalid input");
    }
    else {
       double tempInFah = convertedType * 9 / 5 + 32;
       print("The temperature in Fahrenheit is: $tempInFah");
    }
    
}

/* I used tryParse instead of parse to handle crashes since parse doesn't return null value in case of invalid inputs.
 AI was not used for writing the code or constructing the logic whatsoever.
 resources used:
 1- digitalize mobile gitbook provided to us by the instructors.
 2- https://medium.com/nextfunc/dart-flutter-how-to-parse-string-to-number-22c6e181e599 (this is the article that made me use tryparse instead of parse).
 */