class Transaction {
  final String id;
  final String sender;
  final String receiver;
  final double amount;
  final DateTime date;

  Transaction({required this.id, required this.sender, required this.receiver, required this.amount, required this.date});
}
