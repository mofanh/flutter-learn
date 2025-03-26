import 'package:flutter/material.dart';

class Dialogbox extends StatelessWidget {
  final controller;

  const Dialogbox({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Create Task'),
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: 'Enter Task Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(onPressed: () {}, child: Text('Cancel')),
        TextButton(onPressed: () {}, child: Text('Create')),
      ],
    );
  }
}
