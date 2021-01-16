import 'dart:async';

import 'package:flutter/material.dart';

class FavouriteColorModel {
  FavouriteColorModel._internal();

  static final FavouriteColorModel _singleton = FavouriteColorModel._internal();

  ValueNotifier<Color> favouriteNotifier = ValueNotifier<Color>(null);
  Color _color;

  Future<Color> getFavourite() async => _color;

  void addToFavourite(Color favouriteColor) {
    _color = favouriteColor;
    favouriteNotifier.value = favouriteColor;
  }

  void deleteFromFavourite() {
    _color = null;
    favouriteNotifier.value = null;
  }

  factory FavouriteColorModel() {
    return _singleton;
  }
}