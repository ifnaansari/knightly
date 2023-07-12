import 'package:flutter/material.dart';
import 'package:knightly/screens/victory_popup.dart';
import 'package:knightly/screens/defeat_popup.dart';

class GameScreen extends StatefulWidget {
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
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
        backgroundColor: Colors.black, // Set app bar color to dark theme
        title: null, // Hide the title
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background_image.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Game UI elements go here
              // Example: Game board, score display, etc.
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
      ),
    );
  }
}