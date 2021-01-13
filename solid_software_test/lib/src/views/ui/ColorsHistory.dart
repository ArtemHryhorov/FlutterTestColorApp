import 'package:flutter/material.dart';

class ColorsHistory extends StatefulWidget {
  @override
  _ColorsHistory createState() => _ColorsHistory();
}

class _ColorsHistory extends State<ColorsHistory> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
          child: Text(
            "You don't have any colors in history. Go to RandomColor screen and click on it",
            textAlign: TextAlign.center,
            style: new TextStyle(fontSize: 20.0,),
          ),
        )
    );
  }
}