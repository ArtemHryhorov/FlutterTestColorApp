import 'package:flutter/material.dart';
import 'package:solid_software_test/src/data/ColorsHistoryModel.dart';
import 'package:solid_software_test/src/data/FavouriteColorModel.dart';
import 'package:solid_software_test/src/views/ui/ColorsHistory.dart';
import 'package:solid_software_test/src/views/ui/FavouriteColor.dart';
import 'package:solid_software_test/src/views/ui/RandomColor.dart';

class MainNavigation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MainNavigation();
}

class _MainNavigation extends State<MainNavigation> {
  ColorsHistoryModel _colorsHistoryModel = ColorsHistoryModel();
  FavouriteColorModel _favouriteColorModel = FavouriteColorModel();
  int _currentIndex = 1;
  final List<Widget> _viewsList = [
    ColorsHistory(),
    RandomColor(),
    FavouriteColor()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Solid Software"),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              generateCurrentBarIcon(),
              color: Colors.white,
            ),
            onPressed: () { onIconPressed(); },
          )
        ],
      ),
      body: _viewsList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onScreenSelected, // new
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.history), label: "History"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Colors"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favourite"),
        ],
      ),
    );
  }

  void onScreenSelected(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  IconData generateCurrentBarIcon() {
    if (_currentIndex == 0) {
      return Icons.delete_forever;
    } else if (_currentIndex == 1) {
      return Icons.favorite;
    } else {
      return Icons.clear;
    }
  }

  void onIconPressed() {
    if (_currentIndex == 0) {
      _colorsHistoryModel.clearHistory();
    } else if (_currentIndex == 1) {
      () async {
        _favouriteColorModel.addToFavourite(
            await _colorsHistoryModel.getLast()
        );
      }();
    } else {
      _favouriteColorModel.deleteFromFavourite();
    }
  }
}
