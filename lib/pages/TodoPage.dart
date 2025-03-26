import 'package:flutter/material.dart';
import 'package:try_app/utils/DialogBox.dart';
import 'package:try_app/utils/TodoTile.dart';

class Todopage extends StatefulWidget {
  Todopage({super.key});

  @override
  State<Todopage> createState() => _TodopageState();
}

class _TodopageState extends State<Todopage> {
  final _controller = new TextEditingController();

  List todoList = [
    {'taskName': 'Make Tutorial', 'isCompleted': true},
    {'taskName': 'do exercise', 'isCompleted': false},
  ];

  void checkBoxChanged(index) {
    setState(() {
      todoList[index]['isCompleted'] = !todoList[index]['isCompleted'];
    });
  }

  void createTask() {
    showDialog(
      context: context,
      builder: (context) {
        return Dialogbox(controller: _controller);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(title: Text('TO DO'), centerTitle: true, elevation: 0),
      floatingActionButton: FloatingActionButton(
        onPressed: createTask,
        child: Icon(Icons.add),
        backgroundColor: Colors.yellow[400],
      ),
      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (context, index) {
          return TodoTile(
            taskName: todoList[index]['taskName'],
            isCompleted: todoList[index]['isCompleted'],
            onChanged: (value) => checkBoxChanged(index),
          );
        },
      ),
    );
  }
}
