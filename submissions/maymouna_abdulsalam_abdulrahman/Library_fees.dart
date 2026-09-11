
import 'dart:math';
// الخطوة الاولى اسوي كلاس
abstract class LibraryItem {

final String title;
final int loanDays;

 LibraryItem ({required this.title, required this.loanDays});

int lateDaysFor(int daysKept){
if (daysKept > loanDays) {
    return daysKept - loanDays;
} return 0;
}

double feeFor(int daysKept);

} 

//Book/Dvd  الخطوة الثانية نوعي المواد
class Book extends LibraryItem{
    Book ({required String title}) : super(title: title , loanDays :14);

@override
double feeFor(int daysKept) {
 int lateDays=lateDaysFor(daysKept);
 double total =lateDays*0.25;
return total> 10.00? 10.00 :total;
}
}
     class Dvd extends LibraryItem{
 Dvd ({required String title}) : super(title: title , loanDays :3);
@override
  double feeFor(int daysKept) {
    return lateDaysFor(daysKept)*1.00;
  }
  }

//الخطوة الثالثة
class Member {
static int _counter =1;
final int id;
final String name;
double _fines = 0.0;

Member({required this.name}) :id= _counter++;
double get fines => _fines;

void addFine(double amount){

if (amount <=0) return;
_fines +=amount;}

bool pay(double amount ){
if(amount>0 && amount <=_fines){
    _fines -=amount;
    return true;}
    return false;
}}

//الخطوة الرابعة
class Loan{
final Member member;
final LibraryItem item;
final int daysKept;

Loan(this.member,this.item,this.daysKept);
}
     
//الخطوة اخامسة


String statusOf(double fines) {
  if (fines == 0) {
    return 'Clear';
  } else if (fines < 5) {
    return 'Warning';
  } else {
    return 'Blocked';
  }
}

void printLoanLine({required Loan loan , required double fee }){
    int lateDays = loan.item.lateDaysFor(loan.daysKept);
    String lateText=lateDays>0? "$lateDays late" : "on time";
  print(" ${loan.member.name} returned ${loan.item.title} after ${loan.daysKept} days-> $lateText ->fee ${fee.toStringAsFixed(2)}");
}

void main() {
  final zainab = Member(name: 'Zainab');
  final mustafa = Member(name: 'Mustafa');
  final hiba = Member(name: 'Hiba');
  
  final List<Loan> loans = [
    Loan(zainab, Book(title: "Clean Code"), 20),
    Loan(mustafa, Dvd(title: "Interstellar"), 9),
    Loan(hiba, Book(title: "The Pragmatic Programmer"), 10),
    Loan(zainab, Dvd(title: "Inception"), 4),
    Loan(mustafa, Book(title: "Refactoring"), 100),
  ];
 print("***Returns***");

 double totalFinesCharged=0.0;
  for (var loan in loans) {
    double fee = loan.item.feeFor(loan.daysKept);
    loan.member.addFine(fee);
   
     totalFinesCharged += fee;
    printLoanLine(loan: loan, fee: fee);
  }

 print("***Members***");

  final members = [zainab, mustafa, hiba];
  for (var member in members) {
    var status = statusOf(member.fines);
    String fineStr=member.fines.toStringAsFixed(2);
    print("${member.id} ${member.name.padRight(7)} $fineStr $status");
  }
  print("***payments***");

double totalCollected=0.0;
  double payZainab = 2.50;

  if (zainab.pay(payZainab)) {
    totalCollected += payZainab;
    print("Zainab pays ${payZainab.toStringAsFixed(2)}  -> accepted, fines now ${zainab.fines.toStringAsFixed(2)}");
  } else {
    print('Zainab pays ${payZainab.toStringAsFixed(2)}  -> rejected, fines still ${zainab.fines.toStringAsFixed(2)}');
  }

  double payMustafa = 20.00;
  if (mustafa.pay(payMustafa)) {
    totalCollected += payMustafa;
    print("Mustafa pays ${payMustafa.toStringAsFixed(2)} -> accepted, fines now ${mustafa.fines.toStringAsFixed(2)}");
  } else {
    print("Mustafa pays ${payMustafa.toStringAsFixed(2)} -> rejected, fines still ${mustafa.fines.toStringAsFixed(2)}");
  }

  int blockedCount = 0;
  for (var member in members) {
if (statusOf(member.fines) == "Blocked") {

 blockedCount=1;
    }
  }

  print(" ***Summary*** ");
  print("Total fines charged: ${totalFinesCharged.toStringAsFixed(2)}");
  print("Total collected: ${totalCollected.toStringAsFixed(2)}");
  print("Blocked members: $blockedCount");


}










