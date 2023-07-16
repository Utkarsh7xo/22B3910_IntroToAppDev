import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Counter App'),
        ),
        body: Center(
          child: Counter(),
        ),
      ),
    );
  }
}

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0; // initialize the counter value

  void _increment() {
    // define a function to increment the counter
    setState(() {
      _counter++;
    });
  }

  void _decrement() {
    // define a function to decrement the counter
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FilledButton(
          child: Icon(Icons.remove),
          onPressed: _decrement, // call the decrement function when pressed
        ),
        Container(
          margin: const EdgeInsets.all(10.0),
          color: Color.fromARGB(255, 184, 127, 255),
          width: 48.0,
          height: 48.0,
          child:Center(child:Text(_counter.toString())),
        ),
         // display the counter value as text
        FilledButton(
          child: Icon(Icons.add),
          onPressed: _increment, // call the increment function when pressed
        ),
      ],
    );
  }
}
