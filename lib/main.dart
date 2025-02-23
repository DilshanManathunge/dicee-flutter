import 'package:flutter/material.dart';
import "dart:math";
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  //const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceNumber = 1;
  var rightDiceNumber = 6;
  void changeDiceNumber(){
    setState(() {
      rightDiceNumber = Random().nextInt(6)+1;
      leftDiceNumber = Random().nextInt(6)+1;
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
                changeDiceNumber();
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ), //Image
          ), //Expanded
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeDiceNumber();
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ), //Image
          ), //Expanded
        ], //<Widget>[]
      ),
    );
  }
}
