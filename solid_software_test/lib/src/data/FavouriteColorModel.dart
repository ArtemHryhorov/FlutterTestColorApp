import 'package:flutter/material.dart';

class FavouriteColorModel {
  FavouriteColorModel._privateConstructor();

  Color color;

  static final FavouriteColorModel instance =
      FavouriteColorModel._privateConstructor();

  void addToFavourite(Color favouriteColor) {
    color = favouriteColor;
  }

  void deleteFromFavourite() {
    color = null;
  }

  factory FavouriteColorModel() {
    return instance;
  }
}
