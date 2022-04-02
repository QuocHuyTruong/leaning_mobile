import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'My Counter',
      home: myHomePage(),
    );
  }
}

class myHomePage extends StatefulWidget {
  const myHomePage({Key? key}) : super(key: key);

  @override
  State<myHomePage> createState() => _myHomePageState();
}

class _myHomePageState extends State<myHomePage> {
  int counter = 0;
  void countUp(){
    setState(() {
      counter ++;
    });
  }
  void countDown(){
    setState(() {
      counter --;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Image"),),
      body: Center(
        child:

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Icon(Icons.star,color: Colors.green[500]),
            Icon(Icons.star,color: Colors.green[500]),
            Icon(Icons.star,color: Colors.green[500]),
            Icon(Icons.star,color: Colors.black),
            Icon(Icons.star,color: Colors.black),
          ],
        ),
      ),
    );
  }
}

