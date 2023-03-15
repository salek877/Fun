import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text(
          'Ask Me Anything',
        ),
      ),
      body: Screen(),
    ),
  ),
  );
}

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {

  int changeBall = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            changeBall = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset(
            'images/ball$changeBall.png'
        ),
      ),
    );
  }
}

