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
        child: GestureDetector(
          onPanUpdate: (details) {
            if (details.delta.dx > 0) {
              // swiping in right direction
              print("you have swipped to the right");
            }else if(details.delta.dy > 0){
              // swiping in left direction
              print("you have swipped to the left");
            }
          },
          child: Center(child: Text("Hello ...songs here")),
        ),
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
