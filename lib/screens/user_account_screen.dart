import 'package:flutter/material.dart';

class UserAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/knightly_logo.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'John Doe',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'john.doe@example.com',
              style: TextStyle(
                color: Colors.white.withOpacity(0.7),
                fontSize: 16,
              ),
            ),
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.call,
                  color: Colors.white,
                  size: 24,
                ),
                Icon(
                  Icons.email,
                  color: Colors.white,
                  size: 24,
                ),
                Icon(
                  Icons.location_on,
                  color: Colors.white,
                  size: 24,
                ),
              ],
            ),
            SizedBox(height: 32),
            Text(
              'About',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                  'Nulla facilisi. Proin ac magna nulla. Sed at maximus nisi. '
                  'Morbi eget mi vel elit pellentesque pellentesque. '
                  'Nunc eleifend neque a ligula aliquet, et pretium tortor viverra.',
              style: TextStyle(
                color: Colors.white.withOpacity(0.7),
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
