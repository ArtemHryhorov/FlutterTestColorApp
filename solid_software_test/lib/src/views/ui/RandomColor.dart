import 'package:flutter/material.dart';
import 'package:solid_software_test/src/views/utils/RandomColorGenerator.dart';

class RandomColor extends StatefulWidget {
  @override
  _RandomColorState createState() => _RandomColorState();
}

class _RandomColorState extends State<RandomColor> {
  Color containerColor = generateRandomColor();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          setState(() {
            containerColor = generateRandomColor();
          });
        },
        child: SizedBox.expand(
          child: Container(
              width: 200.0,
              height: 100.0,
              color: containerColor,
              child: ButtonTheme(
                minWidth: 200.0,
                height: 100.0,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigate back to first route when tapped.
                  },
                  child: Text('Show history'),
                ),
              )),
        ));
  }
}
