import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:t2/Model/todo.dart';
import "widgets/todo_item.dart";


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final toDoList = ToDo.toDoList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Center(
          child: Text(
            "To Do List",
            style: GoogleFonts.calligraffitti(
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          // Search Box Row (Ensure it has proper width)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity, // Ensures it stretches properly
              child: SearchBox(),
            ),
          ),
          // ListView needs a fixed height or should be inside Expanded
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 25, 0, 0),
                  child: Container(
                    child: Text(
                      "Things to do",
                      style: GoogleFonts.lato(fontSize: 24, fontWeight: FontWeight.bold),

                    ),
                  ),
                ),
                for(ToDo todoo in toDoList)
                  ToDoItem(todo: todoo)
                ,
              ],
            ),
          ),
        ],
      ),
    );
  }



Widget SearchBox(){
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white24,
          borderRadius: BorderRadius.circular(20),
        ),
        child: TextField(
          decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              prefixIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(CupertinoIcons.search, color: Colors.black,size: 25,),
              ),
              border: InputBorder.none,
              hintText: 'search...'
          ),
        ),
      ),
    );
  }
}
