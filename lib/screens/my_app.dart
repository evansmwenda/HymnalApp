import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  static const routeName = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NZK - 100"),
        leading: Icon(Icons.menu),
      ),
      body: Container(
        child: Text("Hello ...songs here"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){},
        backgroundColor: Colors.blue,

      ),
    );
  }
}
