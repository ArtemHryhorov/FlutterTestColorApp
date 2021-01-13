import 'package:flutter/material.dart';

class FavouriteColor extends StatefulWidget {
  @override
  _FavouriteColor createState() => _FavouriteColor();
}

class _FavouriteColor extends State<FavouriteColor> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
          child: Text(
            "No favourite color selected",
            textAlign: TextAlign.center,
            style: new TextStyle(fontSize: 20.0,),
          ),
        )
    );
  }
}
