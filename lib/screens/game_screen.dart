import 'package:flutter/material.dart';
import "package:chess/chess.dart";
import 'package:knightly/screens/victory_popup.dart';
import 'package:knightly/screens/defeat_popup.dart';
import 'package:knightly/screens/wallet_screen.dart';

class GameScreen extends StatefulWidget {
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  Chess chess = Chess();

  void makeMove(String from, String to) {
    if (chess.move({'from': from, 'to': to})) {
      // Move was valid, update the UI or perform any other necessary actions
      setState(() {});
    } else {
      // Move was invalid, handle the error or show a message to the player
      print('Invalid move!');
    }
  }

  void _gameOver(bool isVictory) {
    String username = 'Player 1'; // Replace with actual username
    Color textColor = Colors.white; // Customize the text color
    double fontSize = 24.0; // Customize the font size

    if (isVictory) {
      String rewardsMessage = 'Congratulations! You earned 100 coins'; // Customize the rewards message

      showDialog(
        context: context,
        builder: (context) => VictoryScreen(
          username: username,
          textColor: textColor,
          rewardsMessage: rewardsMessage,
          fontSize: fontSize,
        ),
      );
    } else {
      String message = 'Better luck next time'; // Customize the message

      showDialog(
        context: context,
        builder: (context) => DefeatScreen(
          username: username,
          textColor: textColor,
          message: message,
          fontSize: fontSize,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chess Game'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Chess Board',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 16),
            Container(
              width: 300,
              height: 300,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 8,
                ),
                itemCount: 64,
                itemBuilder: (BuildContext context, int index) {
                  int row = index ~/ 8;
                  int col = index % 8;
                  String position = String.fromCharCode(col + 97) + (8 - row).toString();

                  // Determine the color of the chessboard squares
                  Color color = (row + col) % 2 == 0 ? Colors.white : Colors.grey;

                  // Get the piece at the current position
                  String piece = chess.get(position);

                  return GestureDetector(
                    onTap: () {
                      // Handle square tap
                      makeMove('e2', position); // Example: Move the pawn to the tapped square
                    },
                    child: Container(
                      color: color,
                      child: Center(
                        child: Text(
                          piece ?? '',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Simulate game over
                bool isVictory = true; // Replace with actual game over condition
                _gameOver(isVictory);
              },
              child: Text('End Game'),
            ),
          ],
        ),
      ),
    );
  }
}
