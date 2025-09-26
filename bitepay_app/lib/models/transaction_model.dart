class TransactionModel {
  final String title;
  final double amount;
  final DateTime date;
  final bool isCredit; // true = top-up, false = payment

  TransactionModel({
    required this.title,
    required this.amount,
    required this.date,
    required this.isCredit,
  });
}
