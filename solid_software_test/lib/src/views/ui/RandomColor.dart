import 'package:flutter/material.dart';
import 'package:solid_software_test/src/data/ColorsHistoryModel.dart';
import 'package:solid_software_test/src/views/utils/RandomColorGenerator.dart';

class RandomColor extends StatefulWidget {
  @override
  _RandomColorState createState() => _RandomColorState();
}

class _RandomColorState extends State<RandomColor> {
  ColorsHistoryModel colorsHistoryModel = ColorsHistoryModel.instance;
  Color containerColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          setState(() {
            containerColor = generateRandomColor();
            colorsHistoryModel.addColor(containerColor);
          });
        },
        child: Center(
          child: createColorOrHint(),
        )
    );
  }

  Widget createColorOrHint() {
    if (containerColor == null && colorsHistoryModel.getLast() == null) {
      return Text(
        "Tap here to start",
        textAlign: TextAlign.center,
        style: new TextStyle(
          fontSize: 20.0,
        ),
      );
    } else {
      return SizedBox.expand(
        child: Container(
          color: getCurrentColor(),
        ),
      );
    }
  }

  Color getCurrentColor() {
    if (containerColor == null) {
      if (colorsHistoryModel.getLast() == null) {
        return Colors.white;
      } else {
        return colorsHistoryModel.getLast();
      }
    } else {
      return containerColor;
    }
  }
}
