/*import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:untitled/pet_app_homapage/screens/ilan%20ver_screen.dart';


class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  List categoryNames = [
    'Acil Veteriner',
    'Hayvan Bakımı',
    'Haritalar',
  ];

  List<Color> categoryColors = [
    Color(0xFFFFCF2F),
    Color(0xFF6FE980),
    Color(0xFF618DFD),
  ];

  List<Icon> categoryIcons = [
    Icon(Icons.call, color: Colors.white, size: 30),
    Icon(Icons.pets_outlined, color: Colors.white, size: 30),
    Icon(Icons.map, color: Colors.white, size: 30),
  ];

  List imgList = [
    'İlanlara Bak',
    'İlan Ver',
    'Acil Veteriner Hattı',
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: Colors.orange,
        animationDuration: Duration(milliseconds: 300),
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
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
      ),
      appBar: AppBar(
        backgroundColor: Colors.orange,
        elevation: 0, //transparanda blur katar
        title: Text('happytails'),
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.amber.shade50,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
        leading: IconButton(
          onPressed: () {
            //menu acma
          },
          icon: Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () {
              //menu acma
            },
            icon: Icon(Icons.person),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F3FF),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'ARA | profil, ilan etc.',
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 25,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 300,
                      height: 180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/pet_apps/afiş1.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 300,
                      height: 180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/pet_apps/afiş2.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 300,
                      height: 180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/pet_apps/afiş3.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 300,
                      height: 180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/pet_apps/afiş4.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '  Hizmetlerimiz',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 15, right: 15),
                child: Column(
                  children: [
                    GridView.builder(
                      itemCount: categoryNames.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 1.1,
                      ),
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                color: categoryColors[index],
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: categoryIcons[index],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              categoryNames[index],
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black.withOpacity(0.7),
                              ),
                            )
                          ],
                        );
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Keşfet',
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GridView.builder(
                      itemCount: imgList.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        childAspectRatio:
                            (MediaQuery.of(context).size.height - 50 - 25) /
                                (4 * 50), //240
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                      ),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            if (index == 1) {
                              // Check if "İlan Ver" container is tapped
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      Ilan(), // Navigate to the İlan Ver page
                                ),
                              );
                            }
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.amber.shade50,
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(10),
                                  /*child: Image.asset(
                                'images/${imgList[index]}.jpg',
                                width: 100,
                                height: 100,
                              ),*/
                                ),
                                Text(
                                  imgList[index],
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black.withOpacity(0.6),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}*/
// anasayfa.dart
import 'package:flutter/material.dart';
import 'package:untitled/pet_app_homapage/screens/Profile_screen.dart';
import 'package:untitled/pet_app_homapage/screens/acilveteriner.dart';

import 'package:untitled/pet_app_homapage/screens/ilan%20ver_screen.dart';

import 'screens/bottombar.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  List categoryNames = [
    'Acil Veteriner',
    'Hayvan Bakımı',
    'Haritalar',
  ];

  List<Color> categoryColors = [
    Color(0xFFFFCF2F),
    Color(0xFF6FE980),
    Color(0xFF618DFD),
  ];

  List<Icon> categoryIcons = [
    Icon(Icons.call, color: Colors.white, size: 30),
    Icon(Icons.pets_outlined, color: Colors.white, size: 30),
    Icon(Icons.map, color: Colors.white, size: 30),
  ];

  List imgList = [
    'İlanlara Bak',
    'İlan Ver',
    'Acil Veteriner Hattı',
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: AnimatedBottomBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      appBar: AppBar(
        backgroundColor: Colors.orange,
        elevation: 0,
        title: Text('happytails'),
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.amber.shade50,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
        leading: IconButton(
          onPressed: () {
            //menu acma
          },
          icon: Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => ProfileScreen(), //su ilan
                ),
              );
            },
            icon: Icon(Icons.person),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F3FF),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'ARA | profil, ilan etc.',
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 25,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 300,
                      height: 180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/pet_apps/afiş1.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 300,
                      height: 180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/pet_apps/afiş2.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 300,
                      height: 180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/pet_apps/afiş3.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 300,
                      height: 180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/pet_apps/afiş4.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '  Hizmetlerimiz',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 15, right: 15),
                child: Column(
                  children: [
                    GridView.builder(
                      itemCount: categoryNames.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 1.1,
                      ),
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                color: categoryColors[index],
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: categoryIcons[index],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              categoryNames[index],
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black.withOpacity(0.7),
                              ),
                            )
                          ],
                        );
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Keşfet',
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GridView.builder(
                      itemCount: imgList.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        childAspectRatio:
                            (MediaQuery.of(context).size.height - 50 - 25) /
                                (4 * 50),
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                      ),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            if (index == 0) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      Ilan(), //su ilan
                                ),
                              );
                            }
                            if (index == 1) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) => Ilan(),
                                ),
                              );
                            }
                            if (index == 2) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      acilVeterinerler(),
                                ),
                              );
                            }
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.amber.shade50,
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(10),
                                ),
                                Text(
                                  imgList[index],
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black.withOpacity(0.6),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
