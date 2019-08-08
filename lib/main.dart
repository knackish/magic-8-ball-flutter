import 'package:flutter/material.dart';
import 'dart:math';


void main() => runApp(
      MaterialApp(
        home:BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Center(
        child: Text('Magic 8 Ball!'),
        ),
      ),
      body: Eightball()
    );  
  }
}


class Eightball extends StatefulWidget {
  @override
  _EightballState createState() => _EightballState();
}

class _EightballState extends State<Eightball> {

  int _ballNum = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            print("IM PRESSED");
            _ballNum = Random().nextInt(5) + 1; 
          });
        },
        child: Image.asset('images/ball$_ballNum.png'),
        ),
    );
  }
}    
