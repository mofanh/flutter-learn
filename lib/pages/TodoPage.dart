import 'package:flutter/material.dart';

class Todopage extends StatefulWidget {
  Todopage({super.key});

  @override
  State<Todopage> createState() => _TodopageState();
}

class _TodopageState extends State<Todopage> {
  TextEditingController _controller = TextEditingController();

  String greetMsg = "";

  void greetUser() {
    setState(() {
      greetMsg = "Hello, " + _controller.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Todo App')),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(25.0),
          child: Column(
            children: [
              Text(greetMsg),
              TextField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: 'Enter your todo',
                  border: OutlineInputBorder(),
                ),
              ),
              ElevatedButton(onPressed: greetUser, child: Text('Tap')),
            ],
          ),
        ),
      ),
    );
  }
}
