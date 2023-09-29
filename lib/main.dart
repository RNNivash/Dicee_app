import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.teal,
          appBar: AppBar(
            title: Center(child: Text('Dicee')),
            backgroundColor: Colors.black87,
          ),
          body: DicePage(),
        ),
      )
  );
}
class DicePage extends StatefulWidget {
  const DicePage({super.key});
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 6;
  int rightDiceNumber = 3;

  void changeDiceNumber(){
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;
  }
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: TextButton(
                  onPressed: (){
                    setState(() {
                    changeDiceNumber();
                    });
                    },
                  child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
          ),
          Expanded(
              child: TextButton(
                  onPressed: (){
                   setState(() {
                     changeDiceNumber();
                   });
                  },
                  child: Image.asset('images/dice$rightDiceNumber.png'))
          ),
        ],
      ),
    );
  }
}


