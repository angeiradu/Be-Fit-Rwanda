
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


void main() {
  runApp(MaterialApp(
    title: 'Be-Fit Rwanda',
    theme: ThemeData(
      primarySwatch: Colors.green,
      textTheme: TextTheme(
        headline1: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.green),
        headline2: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green),
        bodyText1: TextStyle(fontSize: 16, color: Colors.black87),
      ),
    ),
    home: BeFitRwandaHomePage(),
  ));
}

class BeFitRwandaHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Be-Fit Rwanda'),
        titleTextStyle: TextStyle(
          fontSize: 25.0,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  Text(
                    'Welcome to Be-Fit Rwanda!',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  SizedBox(height: 20),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image(
                      image: AssetImage('assets/befit.jpg',
                      
                      ),
                    )
                  ),
                  SizedBox(height: 20),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.fitness_center),
                    label: Text('Get Started'),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
            Text(
              'Fitness Tips and Workout Routines',
              style: Theme.of(context).textTheme.headline2,
            ),
            FitnessTipsSection(),
            SizedBox(height: 20),
            Text(
              'Nutrition Advice',
              style: Theme.of(context).textTheme.headline2,
            ),
            NutritionAdviceSection(),
            SizedBox(height: 20),
            Text(
              'Community Support',
              style: Theme.of(context).textTheme.headline2,
            ),
            CommunitySupportSection(),
            SizedBox(height: 20),
            Text(
              'Progress Tracking',
              style: Theme.of(context).textTheme.headline2,
            ),
            ProgressTrackingSection(),
            SizedBox(height: 20),
            Text(
              'Dynamic Reminders',
              style: Theme.of(context).textTheme.headline2,
            ),
            DynamicRemindersSection(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.fitness_center), label: 'Workouts'),
          BottomNavigationBarItem(icon: Icon(Icons.fastfood), label: 'Nutrition'),
        ],
        
        unselectedItemColor: Colors.grey,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}