import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String coordinates = '';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (TapDownDetails details) {
        double x = details.localPosition.dx;
        double y = details.localPosition.dy;
        setState(() {
          coordinates = 'Tapped at x: $x, y: $y';
        });
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tap Coordinates Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Tap anywhere on the screen!',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              Text(
                coordinates,
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
