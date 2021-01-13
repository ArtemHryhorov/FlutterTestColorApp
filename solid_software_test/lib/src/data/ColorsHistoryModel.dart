import 'package:flutter/material.dart';

class ColorsHistoryModel {
  ColorsHistoryModel._privateConstructor();

  List<Color> colorsList = [];

  static final ColorsHistoryModel instance =
      ColorsHistoryModel._privateConstructor();

  void addColor(Color newColor) {
    colorsList.add(newColor);
  }

  Color getLast() {
    if (colorsList.isEmpty) {
      return null;
    } else {
      return colorsList.last;
    }
  }

  void clearHistory() {
    colorsList.clear();
  }

  factory ColorsHistoryModel() {
    return instance;
  }
}
