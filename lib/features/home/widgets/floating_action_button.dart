import 'package:flutter/material.dart';

class CustomFloationActionButton extends StatelessWidget {
  const CustomFloationActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      
      elevation: 5,
      shape: CircleBorder(),
      splashColor: Colors.grey,
      onPressed: () {},
      child: Icon(Icons.add, size: 35, color: Colors.black),
    );
  }
}
