import 'package:chess/chess.dart';

class ChessLogic {
  Chess chess = Chess();

  bool makeMove(String from, String to) {
    if (chess.move({'from': from, 'to': to})) {
      // Move was valid, perform any necessary actions
      return true;
    } else {
      // Move was invalid, handle the error or show a message
      return false;
    }
  }

// Add other methods and game logic as needed
}
