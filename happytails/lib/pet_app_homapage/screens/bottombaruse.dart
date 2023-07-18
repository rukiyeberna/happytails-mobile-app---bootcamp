import 'package:flutter/material.dart';
import 'bottombar_widget.dart';

class AnotherPage extends StatefulWidget {
  const AnotherPage({Key? key}) : super(key: key);

  @override
  State<AnotherPage> createState() => _AnotherPageState();
}

class _AnotherPageState extends State<AnotherPage> {
  int _currentIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Another Page'),
      ),
      body: Center(
        child: Text('Content goes here'),
      ),
      bottomNavigationBar: AnimatedBottomBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
      ),
    );
  }
}
// stateless usage

//class  extends StatelessWidget {
//const AnotherPage({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
  int _currentIndex = 0;

  void _onTabTapped(int index) {
    // Handle tab selection logic
  }

  return Scaffold(
    appBar: AppBar(
      title: Text('Another Page'),
    ),
    body: Center(
      child: Text('Content goes here'),
    ),
    bottomNavigationBar: BottomAppBar(
      child: AnimatedBottomBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
      ),
    ),
  );
}
