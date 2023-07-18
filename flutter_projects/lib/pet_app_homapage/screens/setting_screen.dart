import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import 'Profile_screen.dart';
import 'bottombar.dart';
import 'edit_profile.dart';
import 'login_page.dart';
import 'settings_screen_tile.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  int _currentIndex = 0; // Add this line to keep track of the current index

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
      // Add logic here if you want to handle tap events
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ayarlar'),
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.amber.shade50,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: Colors.orange,
        elevation: 1,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => ProfileScreen()),
            );
          },
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              SizedBox(height: 30),
              SettingsTile(
                color: Colors.purple,
                icon: Ionicons.person_circle_outline,
                title: 'Profili Düzenle',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => EditProfileScreen()),
                  );
                },
              ),
              SizedBox(height: 10),
              SettingsTile(
                color: Colors.green,
                icon: Ionicons.lock_closed_outline,
                title: 'Şifre Değiştir',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => EditProfileScreen()),
                  );
                },
              ),
              SizedBox(height: 10),
              SettingsTile(
                color: Colors.red,
                icon: Ionicons.log_in_outline,
                title: 'Çıkış Yap',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
      bottomNavigationBar: AnimatedBottomBar(
        currentIndex: _currentIndex, // Pass the current index
        onTap: _onItemTapped, // Pass the onTap function
      ),
    );
  }
}
