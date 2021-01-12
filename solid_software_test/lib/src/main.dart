import 'package:flutter/material.dart';

import 'views/ui/RandomColor.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Solid Software',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Solid Software'),
        ),
        body: Center(
          child: RandomColor(),
        ),
      ),
    );
  }
}