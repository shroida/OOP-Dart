import 'clsBank.dart';

void main() {
  var account = BankAccount("123456", "Shroida", 1000);

  account.deposit(500);
  account.withdraw(2000);
  print(account.balance);
}
