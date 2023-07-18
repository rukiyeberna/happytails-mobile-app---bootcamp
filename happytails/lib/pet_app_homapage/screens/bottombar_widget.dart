import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class AnimatedBottomBar extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTap;

  const AnimatedBottomBar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  _AnimatedBottomBarState createState() => _AnimatedBottomBarState();
}

class _AnimatedBottomBarState extends State<AnimatedBottomBar> {
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: Colors.white,
      color: Colors.orange,
      animationDuration: Duration(milliseconds: 300),
      onTap: widget.onTap,
      index: widget.currentIndex,
      items: [
        Icon(
          Icons.home,
          color: Colors.white,
        ),
        Icon(Icons.location_on_rounded, color: Colors.white),
        Icon(
          Icons.pets,
          color: Colors.white,
        ),
        Icon(Icons.chat_bubble, color: Colors.white),
        Icon(Icons.settings, color: Colors.white),
      ],
    );
  }
}
