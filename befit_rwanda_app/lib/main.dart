import 'package:flutter/material.dart';

void main() {
  runApp(BeFitApp());
}

class BeFitApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StepOneScreen(),
    );
  }
}

class StepOneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/background.jpg'), // Ensure the path is correct
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Text(
                'Step 1 of 3',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Color(0xFF008080),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Spacer(),
            Text(
              'Welcome to Be Fit Application',
              style: TextStyle(
                fontSize: 24.0,
                color: Color(0xFFA3A3A3),
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.0),
            Text(
              'Personalized workouts will help you gain strength, get in better shape, and embrace a healthy lifestyle.',
              style: TextStyle(
                fontSize: 16.0,
                color: Color(0xFFA3A3A3),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40.0),
            Container(
              width: 379,
              height: 45,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF008080),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  // Handle button press
                },
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: Color(0xFF008080),
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
            SizedBox(height: 50.0),
          ],
        ),
      ),
    );
  }
}
