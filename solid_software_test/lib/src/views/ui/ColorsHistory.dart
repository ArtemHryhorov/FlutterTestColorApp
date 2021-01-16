import 'package:flutter/material.dart';
import 'package:solid_software_test/src/data/ColorsHistoryModel.dart';

class ColorsHistory extends StatefulWidget {
  @override
  _ColorsHistory createState() => _ColorsHistory();
}

class _ColorsHistory extends State<ColorsHistory> {

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<List<Color>>(
      valueListenable: ColorsHistoryModel().colorsNotifier,
      builder: (context, value, widget) {
          return Container(
              child: Center(
                  child: getColorsHistoryOrHint(value)
              )
          );
      }
    );
  }

  Widget getColorsHistoryOrHint(List<Color> colors) {
    if(colors != null && colors.isNotEmpty) {
      return ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return Container(
            height: 50,
            color: colors[colors.length - index - 1],
          );
        },
      );
    } else {
      return Text(
        "You don't have any colors in history. Go to Colors screen and click on it",
        textAlign: TextAlign.center,
        style: new TextStyle(fontSize: 20.0),
      );
    }
  }
}
