import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          centerTitle: true,
          backgroundColor: Colors.blue.shade900,
        ),
        body: Ball());
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballnumber = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: TextButton(
              onPressed: () {
                setState(() {
                  ballnumber = Random().nextInt(5) + 1;
                  print(ballnumber);
                });
              },
              child: Image.asset('images/ball$ballnumber.png'))),
    );
  }
}
