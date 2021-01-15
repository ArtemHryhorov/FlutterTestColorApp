import 'package:flutter/material.dart';
import 'package:solid_software_test/src/data/FavouriteColorModel.dart';

class FavouriteColor extends StatefulWidget {
  @override
  _FavouriteColor createState() => _FavouriteColor();
}

class _FavouriteColor extends State<FavouriteColor> {
  FavouriteColorModel favouriteColorModel = FavouriteColorModel.instance;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
            child: getFavouriteColor()
        )
    );
  }

  Widget getFavouriteColor() {
    if (favouriteColorModel.color == null) {
      return Text(
          "No favourite color selected",
          textAlign: TextAlign.center,
          style: new TextStyle(fontSize: 20.0,)
      );
    } else {
      return Container(
          color: favouriteColorModel.color
      );
    }
  }
}
