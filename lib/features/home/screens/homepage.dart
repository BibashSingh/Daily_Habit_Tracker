import 'package:daily_habit_tracker/features/home/widgets/bottom_navigation_bar.dart';
import 'package:daily_habit_tracker/features/home/widgets/floating_action_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Daily Habit Tracker",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(children: [
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomFloationActionButton(),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
