import 'package:flutter/material.dart';

import 'CommentList.dart';

class NumbersWidget extends StatelessWidget {
  const NumbersWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildButton(
              text: 'Yorumlar',
              value: 12,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CommentsListScreen(
                              comments: [],
                            )));
              }),
          buildDivider(),
          buildButton(
              text: 'Verilen ilanlar',
              value: 12,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CommentsListScreen(
                              comments: [],
                            )));
              }),
          buildDivider(),
          buildButton(
              text: 'Bakıcılık',
              value: 18,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CommentsListScreen(
                              comments: [],
                            )));
              }),
        ],
      ),
    );
  }

  Widget buildDivider() => Container(
        height: 24,
        child: VerticalDivider(),
      );

  Widget buildButton({
    required String text,
    required int value,
    VoidCallback? onPressed,
  }) =>
      MaterialButton(
        padding: EdgeInsets.symmetric(vertical: 4),
        onPressed: onPressed ?? () {},
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              ''
              '$value',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(height: 2),
            Text(
              text,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      );
}
