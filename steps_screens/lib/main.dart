import 'package:flutter/material.dart';
import 'StepOneScreen.dart';
import 'StepTwoScreen.dart';

import 'StepThreeScreen.dart';

void main() {
  runApp(BeFitApp());
}

class BeFitApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StepOneScreen(),
      routes: {
        '/step2': (context) => StepTwoScreen(),
        '/step3': (context) => StepThreeScreen(),
      },
    );
  }
}
