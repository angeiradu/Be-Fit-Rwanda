import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Be-Fit Rwanda',
    theme: ThemeData(
      primarySwatch: Colors.green,
      textTheme: const TextTheme(
        displayLarge: TextStyle(
            fontSize: 24, fontWeight: FontWeight.bold, color: Colors.green),
        displayMedium: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green),
        bodyLarge: TextStyle(fontSize: 16, color: Colors.black87),
      ),
    ),
    home: const BeFitRwandaHomePage(),
  ));
}

class BeFitRwandaHomePage extends StatelessWidget {
  const BeFitRwandaHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Be-Fit Rwanda'),
        titleTextStyle: const TextStyle(
          fontSize: 25.0,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        actions: [
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
          IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  Text(
                    'Welcome to Be-Fit Rwanda!',
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  const SizedBox(height: 20),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: const Image(
                        image: AssetImage(
                          'assets/befit.jpg',
                        ),
                      )),
                  const SizedBox(height: 20),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.fitness_center),
                    label: const Text('Get Started'),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            Text(
              'Fitness Tips and Workout Routines',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            const FitnessTipsSection(),
            const SizedBox(height: 20),
            Text(
              'Nutrition Advice',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            const NutritionAdviceSection(),
            const SizedBox(height: 20),
            Text(
              'Community Support',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            const CommunitySupportSection(),
            const SizedBox(height: 20),
            Text(
              'Progress Tracking',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            const ProgressTrackingSection(),
            const SizedBox(height: 20),
            Text(
              'Dynamic Reminders',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            const DynamicRemindersSection(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.fitness_center), label: 'Workouts'),
          BottomNavigationBarItem(
              icon: Icon(Icons.fastfood), label: 'Nutrition'),
        ],
        unselectedItemColor: Colors.grey,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).primaryColor,
        child: const Icon(Icons.add),
      ),
    );
  }
}

class FitnessTipsSection extends StatelessWidget {
  const FitnessTipsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.green[50],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Icon(Icons.fitness_center, size: 40, color: Colors.green),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  'Access workout routines tailored to different fitness levels and goals.',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            child: const Text('View Workouts'),
          ),
        ],
      ),
    );
  }
}

class NutritionAdviceSection extends StatelessWidget {
  const NutritionAdviceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.green[50],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Icon(Icons.fastfood, size: 40, color: Colors.green),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  'Get personalized meal plans and healthy recipes.',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            child: const Text('View Nutrition Tips'),
          ),
        ],
      ),
    );
  }
}

class CommunitySupportSection extends StatelessWidget {
  const CommunitySupportSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.green[50],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Icon(Icons.group, size: 40, color: Colors.green),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  'Join our community and share your fitness journey.',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Join Community'),
          ),
        ],
      ),
    );
  }
}

class ProgressTrackingSection extends StatelessWidget {
  const ProgressTrackingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.green[50],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Icon(Icons.show_chart, size: 40, color: Colors.green),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  'Track your fitness progress over time.',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Track Progress'),
          ),
        ],
      ),
    );
  }
}

class DynamicRemindersSection extends StatelessWidget {
  const DynamicRemindersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.green[50],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Icon(Icons.notifications_active, size: 40, color: Colors.green),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  'Get reminders to stay on track with your goals.',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Set Reminders'),
          ),
        ],
      ),
    );
  }
}
