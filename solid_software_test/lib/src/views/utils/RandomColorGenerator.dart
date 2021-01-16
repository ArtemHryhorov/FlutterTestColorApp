import 'dart:math';

import 'package:flutter/material.dart';

Color generateRandomColor() {
  final Random _random = Random();
  return Color.fromARGB(
    255,
    _random.nextInt(256),
    _random.nextInt(256),
    _random.nextInt(256),
  );
}