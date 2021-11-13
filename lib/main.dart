import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Ballpage(),
      ),
    );

class Ballpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask ANYTHING By Umair'),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      // ignore: deprecated_member_use
      child: FlatButton(
        onPressed: () {
          setState(
            () {
              ballNumber = Random().nextInt(5) + 1;
              print(ballNumber);
            },
          );
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}
