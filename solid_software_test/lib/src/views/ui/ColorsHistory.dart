import 'package:flutter/material.dart';
import 'package:solid_software_test/src/data/ColorsHistoryModel.dart';

class ColorsHistory extends StatefulWidget {
  @override
  _ColorsHistory createState() => _ColorsHistory();
}

class _ColorsHistory extends State<ColorsHistory> {
  ColorsHistoryModel colorsHistoryModel = ColorsHistoryModel.instance;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(child: generateColorsContainerList())
    );
  }

  Widget generateColorsContainerList() {
    List<Container> colorsContainerList = [];

    for (
      var index = colorsHistoryModel.colorsList.length - 1;
      index >= 0;
      index--
    ) {
      colorsContainerList.add(
          Container(
            height: 50,
            color: colorsHistoryModel.colorsList[index],
          )
      );
    }

    if (colorsContainerList.isEmpty) {
      return Text(
        "You don't have any colors in history. Go to RandomColor screen and click on it",
        textAlign: TextAlign.center,
        style: new TextStyle(fontSize: 20.0),
      );
    } else {
      return ListView(children: colorsContainerList);
    }
  }
}
