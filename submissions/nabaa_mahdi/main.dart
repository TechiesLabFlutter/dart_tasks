abstract class LibraryItem {
  final String title;
  final int loanDays;

  LibraryItem(this.title, this.loanDays);

  int lateDaysFor(int daysKept) {
    if (daysKept > loanDays) {
      return daysKept - loanDays;
    } else {
      return 0;
    }
  }

  double feeFor(int daysKept);
}

class Book extends LibraryItem {
  Book(String title) : super(title, 14);

  @override
  double feeFor(int daysKept) {
    int lateDays = lateDaysFor(daysKept);
    double fee = lateDays * 0.25;

    if (fee > 10.00) {
      return 10.00;
    } else {
      return fee;
    }
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




class Participant {
  static int nextId = 1;

  final int id;
  final String name;
  double _fines = 0.0;

  Participant(this.name) : id = nextId++;

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
    } else {
      return false;
    }
  }
}

class Loan {
  final Participant participant;
  final LibraryItem item;
  final int daysKept;

  Loan(this.participant, this.item, this.daysKept);
}

String statusOf(double fines) {
  if (fines == 0) {
    return 'Clear';
  } else if (fines < 5) {
    return 'Warning';
  } else {
    return 'Blocked';
  }
}

void printLoanLine({
  required Loan loan,
  required double fee,
}) {
  int lateDays = loan.item.lateDaysFor(loan.daysKept);

  if (lateDays == 0) {
    print(
      '${loan.participant.name} returned "${loan.item.title}" '
      'after ${loan.daysKept} days -> on time -> fee ${fee.toStringAsFixed(2)}',
    );
  } else {
    print(
      '${loan.participant.name} returned "${loan.item.title}" '
      'after ${loan.daysKept} days -> $lateDays late -> '
      'fee ${fee.toStringAsFixed(2)}',
    );
  }
}

void main() {
  Participant zainab = Participant('Zainab');
  Participant mustafa = Participant('Mustafa');
  Participant hiba = Participant('Hiba');

  List<Participant> participants = [
    zainab,
    mustafa,
    hiba,
  ];

  List<Loan> loans = [
    Loan(zainab, Book('Clean Code'), 20),
    Loan(mustafa, Dvd('Interstellar'), 9),
    Loan(hiba, Book('The Pragmatic Programmer'), 10),
    Loan(zainab, Dvd('Inception'), 4),
    Loan(mustafa, Book('Refactoring'), 100),
  ];

  double totalFines = 0;

  print('--- Returns ---');

  for (Loan loan in loans) {
    double fee = loan.item.feeFor(loan.daysKept);

    loan.participant.addFine(fee);
    totalFines += fee;

    printLoanLine(
      loan: loan,
      fee: fee,
    );
  }

  print('\n--- Participants ---');

  for (Participant participant in participants) {
    print(
      '#${participant.id} ${participant.name} | '
      'fines ${participant.fines.toStringAsFixed(2)} | '
      '${statusOf(participant.fines)}',
    );
  }

  print('\n--- Payments ---');

  double totalCollected = 0;

  bool zainabPaid = zainab.pay(2.50);

  if (zainabPaid) {
    totalCollected += 2.50;
    print(
      'Zainab pays 2.50 -> accepted, '
      'fines now ${zainab.fines.toStringAsFixed(2)}',
    );
  } else {
    print(
      'Zainab pays 2.50 -> rejected, '
      'fines still ${zainab.fines.toStringAsFixed(2)}',
    );
  }

  bool mustafaPaid = mustafa.pay(20.00);

  if (mustafaPaid) {
    totalCollected += 20.00;
    print(
      'Mustafa pays 20.00 -> accepted, '
      'fines now ${mustafa.fines.toStringAsFixed(2)}',
    );
  } else {
    print(
      'Mustafa pays 20.00 -> rejected, '
      'fines still ${mustafa.fines.toStringAsFixed(2)}',
    );
  }

  int blockedParticipants = 0;

  for (Participant participant in participants) {
    if (statusOf(participant.fines) == 'Blocked') {
      blockedParticipants++;
    }
  }

  print('\n--- Summary ---');
  print('Total fines charged: ${totalFines.toStringAsFixed(2)}');
  print('Total collected: ${totalCollected.toStringAsFixed(2)}');
  print('Blocked participants: $blockedParticipants');
}

   

  
  



