import 'package:flutter/material.dart';

import 'CommentList.dart';

class Comment {
  final String text;
  final int rating;
  final String? photo;

  Comment({required this.text, required this.rating, this.photo});
}

class DoComment extends StatefulWidget {
  const DoComment({Key? key}) : super(key: key);

  @override
  State<DoComment> createState() => _DoCommentState();
}

class _DoCommentState extends State<DoComment> {
  final List<Comment> comments = [];

  TextEditingController commentController = TextEditingController();
  double rating = 0;
  String? selectedPhoto;

  void addComment() {
    setState(() {
      comments.add(Comment(
        text: commentController.text,
        rating: rating.toInt(),
        photo: selectedPhoto,
      ));
      commentController.clear();
      rating = 0;
      selectedPhoto = null;
    });
  }

  void viewCommentsPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => CommentsListScreen(comments: comments)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Yorum yap'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                controller: commentController,
                decoration: InputDecoration(
                  hintText: 'yorumunu buraya yaz',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Puanla: ',
                    style: TextStyle(
                        color: Colors.black87, fontWeight: FontWeight.bold),
                  ),
                  Slider(
                      value: rating,
                      min: 0,
                      max: 5,
                      divisions: 5,
                      onChanged: (value) {
                        setState(() {
                          rating = value;
                        });
                      }),
                  Text(
                    rating.toInt().toString(),
                    style: TextStyle(
                        color: Colors.black87, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            if (selectedPhoto != null)
              Container(
                margin: EdgeInsets.all(16),
                child: Image.network(
                  selectedPhoto!,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ElevatedButton(
              onPressed: () {
                // İmplementasyonuna göre fotoğraf seçme işlemi yapılabilir.
                // Seçilen fotoğrafın selectedPhoto değişkenine atanması gerekmektedir.
                // Bu örnekte, selectedPhoto'ya null atanmıştır.
                setState(() {
                  selectedPhoto = null;
                });
              },
              child: Text('Fotoğraf yükle'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: addComment,
              child: Text('Yorum yap'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CommentsListScreen(
                            comments: [],
                          )),
                );
              },
              child: Text('Diğer yorumları gör'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: addComment,
              child: Text('Vazgeç'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
            ),
          ],
        ),
      ),
    );
  }
}
