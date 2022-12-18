import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int myBallNumber = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueAccent[100],
        appBar: AppBar(
          title: const Text("ASK ME ANYTHING"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextButton(
                    onPressed: (() {
                      setState(() {
                        myBallNumber = Random().nextInt(5) + 1;
                      });
                    }),
                    child: Image(
                        image: AssetImage('images/ball$myBallNumber.png'))),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
