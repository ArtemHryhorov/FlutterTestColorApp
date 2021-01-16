import 'package:flutter/material.dart';
import 'package:solid_software_test/src/data/FavouriteColorModel.dart';

class FavouriteColor extends StatefulWidget {
  @override
  _FavouriteColor createState() => _FavouriteColor();
}

class _FavouriteColor extends State<FavouriteColor> {

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Color>(
      valueListenable: FavouriteColorModel().favouriteNotifier,
      builder: (context, value, widget) => getFavouriteColorOrHint(value)
   );
  }

  Widget getFavouriteColorOrHint(Color color) {
    if (color == null) {
      return Container(
        color: Colors.transparent,
        alignment: Alignment.center,
        child: Text(
          "No favourite color selected",
          textAlign: TextAlign.center,
          style: new TextStyle(fontSize: 20.0)
        )
      );
    } else {
      return Container(
        color: color
      );
    }
  }
}
