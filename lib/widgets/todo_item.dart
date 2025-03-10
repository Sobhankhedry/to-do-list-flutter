import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Model/todo.dart';

const Color tdBlue = Color(0xFF3B82F6);

class ToDoItem extends StatelessWidget {
  final ToDo todo;
  // This constructor requires a title but you're not passing it when calling ToDoItem()
  ToDoItem({Key? key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tileColor: Colors.white,
        leading: Icon(
          todo.isDone? Icons.check_box: Icons.square
        ),
        title: Text(
          todo.Text,
          style: TextStyle(
            fontSize: 16,
            decoration: todo.isDone? TextDecoration.lineThrough: null,
          ),
        ),
      ),
    );
  }
}
