class BankAccount {
  String _accountNumber;
  double _balance;
  String _ownerName;

  BankAccount(this._accountNumber, this._ownerName, this._balance);

  // Getter for balance (read-only)
  double get balance => _balance;
  String get accountNumber => _accountNumber;
  String get ownerName => _ownerName;

  // Method to deposit money
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print("Deposited $amount. New balance: $_balance");
    } else {
      print("Amount must be positive!");
    }
  }

  // Method to withdraw money
  void withdraw(double amount) {
    if (amount <= _balance) {
      _balance -= amount;
      print("Withdrew $amount. Remaining balance: $_balance");
    } else {
      print("Insufficient funds!");
    }
  }
}

void main() {
  var account = BankAccount("123456", "Ahmed", 1000);

  account.deposit(500); // ✅ Works
  account.withdraw(2000); // ❌ Fails (insufficient funds)

  print(account.balance); // ✅ Can read balance
  // account._balance = 5000; // ❌ Error! _balance is private
}
