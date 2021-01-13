import 'package:flutter/material.dart';
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
      ),
      body: viewsList[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped, // new
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.history), label: "History"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Colors"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favourite"),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
