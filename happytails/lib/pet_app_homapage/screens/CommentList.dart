import 'package:flutter/material.dart';

import 'DoComments.dart';

class CommentsListScreen extends StatelessWidget {
  final List<Comment> comments;

  CommentsListScreen({required this.comments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Yorumlar'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: comments.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(comments[index].text),
            subtitle: Text('Puan: ${comments[index].rating}'),
            leading: comments[index].photo != null
                ? Image.network(
                    comments[index].photo!,
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  )
                : null,
          );
        },
      ),
    );
  }
}
