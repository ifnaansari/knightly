import 'package:knightly/models/user_model.dart';

class Game {
  final String id;
  final User player1;
  final User player2;
  GameState state;
  List<Move> moves;

  Game({required this.id, required this.player1, required this.player2, required this.state, required this.moves});
}

class Move {
}

class GameState {
}
