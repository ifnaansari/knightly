class User {
  final String id;
  final String username;
  final String walletAddress;
  int wins;
  int losses;

  User({required this.id, required this.username, required this.walletAddress, this.wins = 0, this.losses = 0});
}
