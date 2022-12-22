import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class CustomBottomNavigationBar extends StatefulWidget implements PreferredSizeWidget {
  CustomBottomNavigationBar({Key? key})
      : preferredSize = Size.fromHeight(5.0),
        super(key: key);
final Size preferredSize;
  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar>{
  _CustomBottomNavigationBarState();

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
        backgroundColor: Color.fromARGB(255, 39, 46, 143),
        color: Color.fromARGB(255, 0, 7, 109),
        animationDuration: Duration(milliseconds: 300),
        items: [
          Icon(
            Icons.home,
            color: Colors.white,
          ),
          Icon(
            Icons.favorite,
            color: Colors.white,
          ),
          Icon(
            Icons.settings,
            color: Colors.white,
          ),
          Icon(
            Icons.alt_route,
            color: Colors.white,
          )

        ],

      );
  }
}