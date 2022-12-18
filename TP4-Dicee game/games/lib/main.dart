import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget  build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar: AppBar(
        title: Text("Dicee game of Samuel DJANTA"),
        backgroundColor: Colors.red,
      ),
          body: MyDiceBody(),
      ),
    );
  }
}
class MyDiceBody extends StatefulWidget{
_MyDiceBodyState createState() => _MyDiceBodyState();
}
class _MyDiceBodyState extends State<MyDiceBody> {
  int LeftDiceNumber = 1 ;
  int RightDiceNumber = 1 ;

  void changeDiceFace(){
    setState(() {
      LeftDiceNumber = Random().nextInt(6) + 1;
      RightDiceNumber = Random().nextInt(6) + 1;
    });
  }
  Widget build(BuildContext context){
    return Container(
      color: Colors.red,
      child: Center(
        child: Row(
          children: [
            Expanded(
                child: FloatingActionButton(
                  child: Image.asset("images/dice$LeftDiceNumber.png"),
                  onPressed: () {
                    changeDiceFace();
                  },
                ),
            ),
            Expanded(
              child: FloatingActionButton(
                child: Image.asset("images/dice$RightDiceNumber.png"),
                onPressed: () {
                  changeDiceFace();
                },
              ),
            ),
          ],
        ),
      ),

    );
}
}