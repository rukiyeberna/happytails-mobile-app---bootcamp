import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:untitled/pet_app_homapage/anasayfa.dart';

import 'package:untitled/pet_app_homapage/screens/bildirim.dart';

import 'acilveteriner.dart';
import 'location.dart';
import 'setting_screen.dart';

class AnimatedBottomBar extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTap;

  AnimatedBottomBar({required this.currentIndex, required this.onTap});

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
      onTap: (index) {
        // Tıklanan ikona göre sayfa geçişini yapın
        switch (index) {
          case 0:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Anasayfa()),
            );
            break;
          case 1:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => harita()),
            );
            break;
          case 2:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => acilVeterinerler()),
            );
            break;
          case 3:
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      bildirimSayfasi()), // pati ikonu olan yer
            );
            break;
          case 4:
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      SettingScreen()), // mesajlasmaforum olan ikon
            );
            break;
          case 5:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SettingScreen()),
            );
            break;
        }
      },
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
