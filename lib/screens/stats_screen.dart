import 'package:flutter/material.dart';

class StatsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stats'),
      ),
      body: Center(
        child: Text(
          'Stats Screen',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
