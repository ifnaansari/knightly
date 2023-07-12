class Reward {
  final String id;
  final double amount;
  final RewardType type;
  final DateTime date;

  Reward({required this.id, required this.amount, required this.type, required this.date});
}

enum RewardType {
  // ignore: constant_identifier_names
  ETH,
  // ignore: constant_identifier_names
  ERC20,
}
