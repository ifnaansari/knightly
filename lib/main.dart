import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:knightly/screens/splash_screen.dart';
import 'package:knightly/screens/options_screen.dart';
import 'package:knightly/screens/signin_signup_screen.dart';
import 'package:knightly/screens/home_screen.dart';
import 'package:knightly/screens/ai_difficulty_selection_screen.dart';
import 'package:knightly/screens/game_screen.dart';
import 'package:knightly/screens/matchmaking_screen.dart';
import 'package:knightly/screens/opponent_found_screen.dart';
import 'package:knightly/screens/user_account_screen.dart';
import 'package:knightly/screens/wallet_screen.dart';

void main() {
  runApp(KnightlyApp());
}

class KnightlyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Knightly App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/options': (context) => OptionsScreen(),
        '/signin_signup': (context) => SigninSignupScreen(),
        '/home': (context) => HomeScreen(),
        '/ai_difficulty_selection': (context) => AIDifficultySelectionScreen(),
        '/game': (context) => GameScreen(),
        '/matchmaking': (context) => MatchmakingScreen(),
        '/opponent_found': (context) => OpponentFoundScreen(userAvatar: "", opponentAvatar: "", username: '', searching: false,),
        '/userAccount': (context) => UserAccountScreen(),
        '/wallet': (context) => WalletScreen(),
      },
    );
  }
}
