import 'package:flutter/material.dart';
import 'package:simple_gesture_detector/simple_gesture_detector.dart';

class MyApp extends StatefulWidget {
  static const routeName = '/';
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _text;

  bool isVisible = true;
  @override
  void initState() {
    super.initState();
    _text = 'Swipe me!';
  }

  @override
  Widget build(BuildContext context) {
    void _onVerticalSwipe(SwipeDirection direction) {
      setState(() {
        if (direction == SwipeDirection.up) {
          _text = 'Swiped up!';
          print('Swiped up!');
        } else {
          _text = 'Swiped down!';
          print('Swiped down!');
        }
      });
    }

    void _onHorizontalSwipe(SwipeDirection direction) {
      setState(() {
        if (direction == SwipeDirection.left) {
          _text = 'Swiped left!';
          print('Swiped left!');
        } else {
          _text = 'Swiped right!';
          print('Swiped right!');
        }
      });
    }

    void _onLongPress() {
      setState(() {
        _text = 'Long pressed!';
        print('Long pressed!');
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("NZK - 100"),
        leading: Icon(Icons.menu),
      ),
      body: ListView(
        children: [
          Container(
            height: 400,
            width: double.infinity,
            color: Colors.green,
            margin: EdgeInsets.all(20),
            child: SimpleGestureDetector(
              onVerticalSwipe: _onVerticalSwipe,
              onHorizontalSwipe: _onHorizontalSwipe,
              onLongPress: _onLongPress,
              swipeConfig: SimpleSwipeConfig(
                verticalThreshold: 40.0,
                horizontalThreshold: 40.0,
                swipeDetectionBehavior:
                    SwipeDetectionBehavior.continuousDistinct,
              ),
              child: _buildBox(),
            ),
          ),
        ],
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

  Widget _buildBox() {
    return Container(
      height: 160.0,
      width: 160.0,
      color: Colors.indigo,
      child: Center(
        child: Text(
          _text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}
