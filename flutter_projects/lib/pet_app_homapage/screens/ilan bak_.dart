import 'package:flutter/material.dart';

import 'bottombar.dart';

class LookAtAdsPage extends StatelessWidget {
  final List<String> ads;

  LookAtAdsPage({required this.ads});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('İlanlara Bak'),
        backgroundColor: Colors.orange,
      ),
      body: ListView.builder(
        itemCount: ads.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(ads[index]),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: AnimatedBottomBar(
          currentIndex: 0,
          onTap: (index) {},
        ),
      ),
    );
  }
}
