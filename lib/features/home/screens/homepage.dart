import 'package:daily_habit_tracker/features/home/widgets/floating_action_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Daily Habit Tracker"), centerTitle: true),
      body: Column(children: [

        ],
      ),
      floatingActionButton: CustomFloationActionButton()
    );
  }
}
