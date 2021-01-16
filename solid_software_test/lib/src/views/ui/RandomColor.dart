import 'package:flutter/material.dart';
import 'package:solid_software_test/src/data/ColorsHistoryModel.dart';
import 'package:solid_software_test/src/views/utils/RandomColorGenerator.dart';

class RandomColor extends StatefulWidget {
  @override
  _RandomColorState createState() => _RandomColorState();
}

class _RandomColorState extends State<RandomColor> {
  ColorsHistoryModel _colorsHistoryModel = ColorsHistoryModel();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          _colorsHistoryModel.addColor(generateRandomColor());
        },
        child: getColorOrHint()
    );
  }

  Widget getColorOrHint() {
    return ValueListenableBuilder<List<Color>>(
        valueListenable: _colorsHistoryModel.colorsNotifier,
        builder: (context, colors, widget) {
          if (colors != null && colors.isNotEmpty) {
            return Container(
              color: colors.last ?? Colors.white
            );
          } else {
            return Container(
              color: Colors.transparent,
              alignment: Alignment.center,
              child: Text(
                  "Hey there!",
                  textAlign: TextAlign.center,
                  style: new TextStyle(fontSize: 20.0)
              ),
            );
          }
        }
    );
  }
}
