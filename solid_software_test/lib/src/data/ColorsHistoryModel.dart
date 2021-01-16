import 'dart:async';

import 'package:flutter/material.dart';

class ColorsHistoryModel {
  ColorsHistoryModel._internal();

  static final ColorsHistoryModel _singleton = ColorsHistoryModel._internal();

  ValueNotifier<List<Color>> colorsNotifier = ValueNotifier<List<Color>>([]);
  List<Color> _colorsList = [];

  Future<Color> getLast() async {
    if (_colorsList.isEmpty) {
      return null;
    } else {
      return _colorsList.last;
    }
  }

  void addColor(Color newColor) {
    _colorsList.add(newColor);
    colorsNotifier.value = List.from(_colorsList);
  }

  void clearHistory() {
    _colorsList.clear();
    colorsNotifier.value = [];
  }

  factory ColorsHistoryModel() {
    return _singleton;
  }
}
