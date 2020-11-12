import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainView()
    );
  }
}

class MainView extends StatefulWidget {
  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  double _value = 0.0;

  void _onChanged(double value) {
    setState(() {
      _value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Slider(
              value: _value,
              onChanged: _onChanged,
            ),
            SizedBox(
              height: 20
            ),
            LinearProgressIndicator(
              value: _value,
              valueColor: AlwaysStoppedAnimation(Colors.amber),
              backgroundColor: Colors.grey.shade300,
            ),
            SizedBox(
              height: 20,
            ),
            CircularProgressIndicator(
              value: _value,
              valueColor: AlwaysStoppedAnimation(Colors.orange),
              backgroundColor: Colors.grey.shade300,
            )
          ],
        ),
      )
    );
  }
}