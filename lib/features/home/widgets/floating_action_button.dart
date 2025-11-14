import 'package:flutter/material.dart';

class CustomFloationActionButton extends StatefulWidget {
  const CustomFloationActionButton({super.key});

  @override
  State<CustomFloationActionButton> createState() =>
      _CustomFloationActionButtonState();
}

class _CustomFloationActionButtonState
    extends State<CustomFloationActionButton> {
  TextEditingController habitController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 5,
      shape: CircleBorder(),
      splashColor: Colors.grey,
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Center(
                child: Text(
                  "Add New Habit",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              content: SizedBox(
                height: 100,
                child: Column(
                  children: [
                    Center(child: Text("Habit is an art of desciplined life.")),
                    SizedBox(
                      height: 50,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        controller: habitController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter you habit";
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Close"),
                ),
                TextButton(
                  onPressed: () {
                    String newHabit = habitController.text;
                    if (newHabit.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Please enter your habit")),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Habit added: $newHabit")),
                      );
                      habitController.clear();
                      Navigator.of(context).pop();
                    }
                  },
                  child: Text("Confirm"),
                ),
              ],
            );
          },
        );
      },
      child: Icon(Icons.add, size: 35, color: Colors.black),
    );
  }
}
