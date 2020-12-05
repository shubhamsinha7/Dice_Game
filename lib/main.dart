import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int ldice=5;
  int rdice=5;
  void DiceFace()
  {
    setState(() {
      ldice=Random().nextInt(6)+1;
      rdice=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                DiceFace();
              },
              child: Image.asset('images/dice$ldice.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                DiceFace();
              },
              child: Image.asset('images/dice$rdice.png'),
            ),
          ),
        ],
      ),
    );
  }
}
