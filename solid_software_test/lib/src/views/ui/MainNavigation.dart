import 'package:flutter/material.dart';
import 'package:solid_software_test/src/data/ColorsHistoryModel.dart';
import 'package:solid_software_test/src/data/FavouriteColorModel.dart';
import 'package:solid_software_test/src/views/ui/ColorsHistory.dart';
import 'package:solid_software_test/src/views/ui/FavouriteColor.dart';
import 'package:solid_software_test/src/views/ui/RandomColor.dart';

class MainNavigation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainNavigation();
  }
}

class _MainNavigation extends State<MainNavigation> {
  ColorsHistoryModel colorsHistoryModel = ColorsHistoryModel.instance;
  FavouriteColorModel favouriteColorModel = FavouriteColorModel.instance;
  int currentIndex = 1;
  final List<Widget> viewsList = [
    ColorsHistory(),
    RandomColor(),
    FavouriteColor()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Solid Software'),
        actions: <Widget>[
          generateCurrentBarIcon()
        ],
      ),
      body: viewsList[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onScreenSelected, // new
        currentIndex: currentIndex,
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
      currentIndex = index;
    });
  }

  IconButton generateCurrentBarIcon() {
    if (currentIndex == 0) {
      return IconButton(
        icon: Icon(
          Icons.delete_forever,
          color: Colors.white,
        ),
        onPressed: () {
          colorsHistoryModel.clearHistory();
        },
      );
    } else if (currentIndex == 1) {
      return IconButton(
        icon: Icon(
          Icons.favorite,
          color: Colors.white,
        ),
        onPressed: () {
          favouriteColorModel.addToFavourite(
            colorsHistoryModel.getLast()
          );
        },
      );
    } else {
      return IconButton(
        icon: Icon(
          Icons.clear,
          color: Colors.white,
        ),
        onPressed: () {
          favouriteColorModel.deleteFromFavourite();
        },
      );
    }
  }
}
