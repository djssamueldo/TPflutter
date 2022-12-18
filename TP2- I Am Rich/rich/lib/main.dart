import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp( 
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar:AppBar(
          title: Text('Je suis riche'),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
          child: Image(
            //image: NetworkImage('url'),
              image: AssetImage('images/diamond.png')
          ),
        ),
      ),
    ),
  );
}