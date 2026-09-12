// baqer abbas ghadhban code for library fees assignment :)
abstract class LibraryItem {
  final String title;
  final int loanDays;
  LibraryItem(this.title, this.loanDays);
  int lateDaysFor(int daysKept) {
    if (daysKept > loanDays) {
      return daysKept - loanDays;
    }
    return 0;
  }
  double feeFor(int daysKept);
}
class Book extends LibraryItem {
  Book(String title) : super(title, 14);
  @override
  double feeFor(int daysKept) {
    int lateDays = lateDaysFor(daysKept);
    double fee = lateDays * 0.25;
    return fee > 10.00 ? 10.00 : fee;
  }
}
class Dvd extends LibraryItem {
  Dvd(String title) : super(title, 3);

  @override
  double feeFor(int daysKept) {
    int lateDays = lateDaysFor(daysKept);
    return lateDays * 1.00;
  }
}
class Member {
  static int _idCounter = 0;
  final int id;
  final String name;
  double _fines = 0.0;
  Member(this.name) : id = ++_idCounter;
  double get fines => _fines;
  void addFine(double amount) {
    if (amount > 0) {
      _fines += amount;
    }
  }
  bool pay(double amount) {
    if (amount > 0 && amount <= _fines) {
      _fines -= amount;
      return true;
    }
    return false;
  }
}
class Loan {
  final Member member;
  final LibraryItem item;
  final int daysKept;

  Loan(this.member, this.item, this.daysKept);
}
String statusOf(double fines) {
  if (fines == 0) {
    return 'Clear';
  } else if (fines < 5.0) {
    return 'Warning';
  } else {
    return 'Blocked';
  }}

void printLoanLine({required Loan loan, required double fee}) {
  int lateDays = loan.item.lateDaysFor(loan.daysKept);
  String lateText = lateDays > 0 ? '$lateDays late' : 'on time';

  print(
    '${loan.member.name} returned "${loan.item.title}" after ${loan.daysKept} days -> $lateText -> fee ${fee.toStringAsFixed(2)}',
  );
}
void main() {
  final zainab = Member('Zainab');
  final mustafa = Member('Mustafa');
  final hiba = Member('Hiba');
  final members = [zainab, mustafa, hiba];
  final loans = [
    Loan(zainab, Book('Clean Code'), 20),
    Loan(mustafa, Dvd('Interstellar'), 9),
    Loan(hiba, Book('The Pragmatic Programmer'), 10),
    Loan(zainab, Dvd('Inception'), 4),
    Loan(mustafa, Book('Refactoring'), 100),
  ];
  double totalFinesCharged = 0.0;
  double totalCollected = 0.0;
  print('Returns');
  for (var loan in loans) {
    double fee = loan.item.feeFor(loan.daysKept);
    loan.member.addFine(fee);
    totalFinesCharged += fee;
    printLoanLine(loan: loan, fee: fee);
  }
  print('\nMembers');
  for (var member in members) {
    print(
      '#${member.id} ${member.name} | fines ${member.fines.toStringAsFixed(2)} | ${statusOf(member.fines)}',
    );
  }
  print('\nPayments');
  double zainabPayment = 2.50;
  if (zainab.pay(zainabPayment)) {
    totalCollected += zainabPayment;
    print(
      'Zainab pays ${zainabPayment.toStringAsFixed(2)} -> accepted, fines now ${zainab.fines.toStringAsFixed(2)}',
    );
  } else {
    print(
      'Zainab pays ${zainabPayment.toStringAsFixed(2)} -> rejected, fines still ${zainab.fines.toStringAsFixed(2)}',
    );
  }
  double mustafaPayment = 17.00;
  if (mustafa.pay(mustafaPayment)) {
    totalCollected += mustafaPayment;
    print(
      'Mustafa pays ${mustafaPayment.toStringAsFixed(2)} -> accepted, fines now ${mustafa.fines.toStringAsFixed(2)}',
    );
  } else {
    print(
      'Mustafa pays ${mustafaPayment.toStringAsFixed(2)} -> rejected, fines still ${mustafa.fines.toStringAsFixed(2)}',
    );
  }
  int blockedCount = members.where((m) => statusOf(m.fines) == 'Blocked').length;
  print('\nSummary');
  print('Total fines charged: ${totalFinesCharged.toStringAsFixed(2)}');
  print('Total collected: ${totalCollected.toStringAsFixed(2)}');
  print('Blocked members: $blockedCount');
}