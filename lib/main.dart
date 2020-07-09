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
        backgroundColor: Colors.blue.shade900,
        title: Text(
          'Ask me Anything',
          // textAlign: TextAlign.left,
        ),
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
  void changeTheBall() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          height: 150.0,
          color: Colors.lightBlue[50],
        ),
        Center(
          child: FlatButton(
            onPressed: () {
              changeTheBall();
              print('$ballNumber');
            },
            child: Image.asset('images/ball$ballNumber.png'),
          ),
          // child: Text('Hello'),
        ),
        Container(
          width: double.infinity,
          height: 130.0,
          color: Colors.lightBlue[200],
        ),
      ],
    );
  }
}
