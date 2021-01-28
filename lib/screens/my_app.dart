import 'package:flutter/material.dart';
import 'package:swipedetector/swipedetector.dart';

class MyApp extends StatelessWidget {
  static const routeName = '/';
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NZK - 100"),
        leading: Icon(Icons.menu),
      ),
      body: Container(
        child:


        SwipeDetector(
          child: Center(child: Text("Hello ...songs here")),
        onSwipeUp: () {
          print("you have swipped up");
        },
        onSwipeDown: () {
          print("you have swipped down");
        },
        onSwipeLeft: () {
          print("you have swipped left");
        },
        onSwipeRight: () {
          print("you have swipped right");
        },
      )
      ),
      floatingActionButton: Visibility(
        visible: isVisible,
        child: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {},
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}
