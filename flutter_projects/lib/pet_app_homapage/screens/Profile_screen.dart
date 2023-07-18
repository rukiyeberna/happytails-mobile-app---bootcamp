import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import 'bottombar.dart';
import 'profile_screen_tile.dart';
import 'setting_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final double coverHeight = 250;
  final double profileHeight = 120;
  int _currentIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
      // Add logic here if you want to handle tap events
    });
  }

  void _showRatingTooltip(double rating) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Puanlama'),
        content: Text('Kullanıcı $rating puana sahip'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          buildTop(),
          buildContent(),
        ],
      ),
      bottomNavigationBar:
          AnimatedBottomBar(currentIndex: _currentIndex, onTap: _onItemTapped),
    );
  }

  Widget buildContent() => Container(
        padding: EdgeInsets.symmetric(horizontal: 48),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'John Wick',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              Text(
                'Ankara, Turkey',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildSocialIcon(FontAwesomeIcons.instagram, 'johnwick.de'),
                  const SizedBox(width: 12),
                  buildSocialIcon(FontAwesomeIcons.twitter, 'JohnWickUK'),
                  const SizedBox(width: 12),
                  buildSocialIcon(FontAwesomeIcons.facebook, 'JohnWickUK'),
                  const SizedBox(width: 12),
                ],
              ),
              const SizedBox(height: 16),
              Divider(),
              const SizedBox(height: 16),
              NumbersWidget(),
              const SizedBox(height: 4),
              const Divider(thickness: 8),
              const SizedBox(height: 4),
              buildAbout(),
              const SizedBox(height: 32),
            ],
          ),
        ),
      );
  Widget buildStarRating(double rating) {
    double scale = rating / 5.0;
    double starSize = 28.0 * scale;

    return GestureDetector(
      onTap: () {
        _showRatingTooltip(rating);
      },
      child: Transform.scale(
        scale: scale,
        child: Row(
          children: [
            Icon(Icons.star, color: Colors.orange, size: starSize),
            Icon(Icons.star, color: Colors.orange, size: starSize),
            Icon(Icons.star, color: Colors.orange, size: starSize),
            Icon(Icons.star, color: Colors.orange, size: starSize),
            Icon(Icons.star_half, color: Colors.orange, size: starSize),
          ],
        ),
      ),
    );
  }

  Widget buildTop() {
    final bottom = profileHeight / 2;
    final top = coverHeight - profileHeight / 2;

    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: bottom),
          child: buildCoverImage(),
        ),
        Positioned(
          top: 240,
          right: 1,
          child: IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingScreen()),
              );
            },
          ),
        ),
        Positioned(
          top: top,
          child: buildProfilImage(),
        ),
        Positioned(top: 250, left: 2, child: buildStarRating(4.5))
      ],
    );
  }

  Widget buildCoverImage() => Container(
        color: Colors.grey,
        child: Image.asset(
          'assets/pet_apps/daisy.jpg',
          width: double.infinity,
          height: coverHeight,
          fit: BoxFit.cover,
        ),
      );

  Widget buildProfilImage() => Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CircleAvatar(
              radius: profileHeight / 2,
              backgroundColor: Colors.grey.shade800,
              backgroundImage: AssetImage('assets/pet_apps/jw.jpg'),
            ),
          ],
        ),
      );

  Widget buildSocialIcon(IconData icon, String username) => CircleAvatar(
        radius: 25,
        child: Material(
          shape: CircleBorder(),
          clipBehavior: Clip.hardEdge,
          color: Colors.orange,
          child: InkWell(
            onTap: () {
              if (icon == FontAwesomeIcons.instagram) {
                launch('https://instagram.com/$username');
              } else if (icon == FontAwesomeIcons.twitter) {
                launch('https://twitter.com/$username');
              } else if (icon == FontAwesomeIcons.facebook) {
                launch('https://facebook.com/$username');
              }
            },
            child: Center(child: Icon(icon, size: 32)),
          ),
        ),
      );

  Widget buildAbout() => Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hakkında',
              style: TextStyle(
                fontSize: 26.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Hayvanları çok seviyorum ve köpeğim benim ailem gibi ona çok değer veriyorum. Onunla düzenli ilgilenerek olarak ilgileniyorum ve koruyorum.',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      );
}
