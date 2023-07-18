/*import 'package:flutter/material.dart';
import 'ilan bak_.dart';
import 'look_at_ads.dart';

void main() {
  runApp(Ilan());
}

class Ilan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'İlan Ver',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: PostForm(),
    );
  }
}

class PostForm extends StatefulWidget {
  @override
  _PostFormState createState() => _PostFormState();
}

class _PostFormState extends State<PostForm> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _titleController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();

  List<String> ads = [];

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  void submitPost() {
    if (_formKey.currentState!.validate()) {
      ads.add(_titleController.text);

      _titleController.clear();
      _descriptionController.clear();

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('İlan Gönderildi'),
            content: Text('İlan kaydetme başarılı.'),
            actions: <Widget>[
              TextButton(
                child: Text('TAMAM'),
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) =>
                          LookAtAdsPage(ads: ads),
                    ),
                  );
                },
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('İlan Ver'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _titleController,
                decoration: InputDecoration(
                  labelText: 'Başlık',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Lütfen ilan başlığı girin.';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _descriptionController,
                decoration: InputDecoration(
                  labelText: 'Açıklama',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Lütfen ilan açıklaması Girin';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: submitPost,
                child: Text('Kaydet'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:untitled/pet_app_homapage/screens/bottombar_widget.dart';
import 'ilan bak_.dart';
import 'look_at_ads.dart';
import 'path_to_animated_bottom_bar_file.dart'; // Import the AnimatedBottomBar widget

void main() {
  runApp(Ilan());
}

class Ilan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'İlan Ver',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: PostForm(),
    );
  }
}

class PostForm extends StatefulWidget {
  @override
  _PostFormState createState() => _PostFormState();
}

class _PostFormState extends State<PostForm> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _titleController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();

  List<String> ads = [];

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  void submitPost() {
    if (_formKey.currentState!.validate()) {
      ads.add(_titleController.text);

      _titleController.clear();
      _descriptionController.clear();

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('İlan Gönderildi'),
            content: Text('İlan kaydetme başarılı.'),
            actions: <Widget>[
              TextButton(
                child: Text('TAMAM'),
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) =>
                          LookAtAdsPage(ads: ads),
                    ),
                  );
                },
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('İlan Ver'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _titleController,
                decoration: InputDecoration(
                  labelText: 'Başlık',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Lütfen ilan başlığı girin.';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _descriptionController,
                decoration: InputDecoration(
                  labelText: 'Açıklama',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Lütfen ilan açıklaması girin.';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: submitPost,
                child: Text('Kaydet'),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: AnimatedBottomBar(
          currentIndex: 0, // Set the current index according to your needs
          onTap: (index) {
            // Handle bottom bar item tap
          },
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';

import 'dart:io';

import 'bottombar_widget.dart';
import 'ilan bak_.dart';

import 'look_at_ads.dart';
import 'path_to_animated_bottom_bar_file.dart'; // Import the AnimatedBottomBar widget

import 'package:image_picker/image_picker.dart';
import 'dart:io';

void main() {
  runApp(Ilan());
}

class Ilan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'İlan Ver',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: PostForm(),
    );
  }
}

class PostForm extends StatefulWidget {
  @override
  _PostFormState createState() => _PostFormState();
}

class _PostFormState extends State<PostForm> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _titleController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();
  String? _selectedImage;

  List<String> ads = [];

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  void submitPost() {
    if (_formKey.currentState!.validate()) {
      ads.add(_titleController.text);

      _titleController.clear();
      _descriptionController.clear();
      _selectedImage = null;

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('İlan Gönderildi'),
            content: Text('İlan kaydetme başarılı.'),
            actions: <Widget>[
              TextButton(
                child: Text('TAMAM'),
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) =>
                          LookAtAdsPage(ads: ads),
                    ),
                  );
                },
              ),
            ],
          );
        },
      );
    }
  }

  Future<void> _selectImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _selectedImage = pickedFile.path;
      } else {
        _selectedImage = null;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('İlan Ver'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _titleController,
                decoration: InputDecoration(
                  labelText: 'Başlık',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Lütfen ilan başlığı girin.';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _descriptionController,
                decoration: InputDecoration(
                  labelText: 'Açıklama',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Lütfen ilan açıklaması girin.';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: _selectImage,
                child: Text('Resim Seç'),
              ),
              if (_selectedImage != null) ...[
                SizedBox(height: 16.0),
                Image.file(
                  File(_selectedImage!),
                  height: 200,
                ),
              ],
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: submitPost,
                child: Text('Kaydet'),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: AnimatedBottomBar(
          currentIndex: 0, // Set the current index according to your needs
          onTap: (index) {
            // Handle bottom bar item tap
          },
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'bottombar_widget.dart';
import 'ilan bak_.dart';

import 'look_at_ads.dart';
import 'path_to_animated_bottom_bar_file.dart';
import 'turkey_cities.dart';

void main() {
  runApp(Ilan());
}

class Ilan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'İlan Ver',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: PostForm(),
    );
  }
}

class PostForm extends StatefulWidget {
  @override
  _PostFormState createState() => _PostFormState();
}

class _PostFormState extends State<PostForm> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _titleController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();
  String? _selectedImage;
  String? _selectedCity;

  List<String> ads = [];
  List<String> cities = turkeyCities; // List of cities

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  void submitPost() {
    if (_formKey.currentState!.validate()) {
      ads.add(_titleController.text);

      _titleController.clear();
      _descriptionController.clear();
      _selectedImage = null;
      _selectedCity = null;

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('İlan Gönderildi'),
            content: Text('İlan kaydetme başarılı.'),
            actions: <Widget>[
              TextButton(
                child: Text('TAMAM'),
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) =>
                          LookAtAdsPage(ads: ads),
                    ),
                  );
                },
              ),
            ],
          );
        },
      );
    }
  }

  Future<void> _selectImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _selectedImage = pickedFile.path;
      } else {
        _selectedImage = null;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('İlan Ver'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _titleController,
                decoration: InputDecoration(
                  labelText: 'Başlık',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Lütfen ilan başlığı girin.';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _descriptionController,
                decoration: InputDecoration(
                  labelText: 'Açıklama',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Lütfen ilan açıklaması girin.';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              DropdownButtonFormField<String>(
                value: _selectedCity,
                onChanged: (value) {
                  setState(() {
                    _selectedCity = value;
                  });
                },
                items: cities.map((String city) {
                  return DropdownMenuItem<String>(
                    value: city,
                    child: Text(city),
                  );
                }).toList(),
                decoration: InputDecoration(
                  labelText: 'Şehir',
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: _selectImage,
                child: Text('Resim Seç'),
              ),
              if (_selectedImage != null) ...[
                SizedBox(height: 16.0),
                Image.file(
                  File(_selectedImage!),
                  height: 200,
                ),
              ],
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: submitPost,
                child: Text('Kaydet'),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: AnimatedBottomBar(
          currentIndex: 0, // Set the current index according to your needs
          onTap: (index) {
            // Handle bottom bar item tap
          },
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'bottombar_widget.dart';
import 'ilan bak_.dart';

import 'look_at_ads.dart';
import 'path_to_animated_bottom_bar_file.dart';
import 'turkey_cities.dart';

void main() {
  runApp(Ilan());
}

class Ilan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'İlan Ver',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: PostForm(),
    );
  }
}

class PostForm extends StatefulWidget {
  @override
  _PostFormState createState() => _PostFormState();
}

class _PostFormState extends State<PostForm> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _titleController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();
  String? _selectedImage;
  String? _selectedCity;

  List<String> ads = [];

  List<String> cities = turkeyCities; // List of cities

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  void submitPost() {
    if (_formKey.currentState!.validate()) {
      ads.add(_titleController.text);
      ads.add(_descriptionController.text);
      ads.add(_selectedCity!);

      _titleController.clear();
      _descriptionController.clear();
      _selectedImage = null;
      _selectedCity = null;

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('İlan Gönderildi'),
            content: Text('İlan kaydetme başarılı.'),
            actions: <Widget>[
              TextButton(
                child: Text('TAMAM'),
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) =>
                          LookAtAdsPage(ads: ads),
                    ),
                  );
                },
              ),
            ],
          );
        },
      );
    }
  }

  Future<void> _selectImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _selectedImage = pickedFile.path;
      } else {
        _selectedImage = null;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'İlan Ver',
          style: TextStyle(
            color: Colors.white, // Set the text color to white
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _titleController,
                decoration: InputDecoration(
                  labelText: 'Başlık',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Lütfen ilan başlığı girin.';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _descriptionController,
                decoration: InputDecoration(
                  labelText: 'Açıklama',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Lütfen ilan açıklaması girin.';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              DropdownButtonFormField<String>(
                value: _selectedCity,
                onChanged: (value) {
                  setState(() {
                    _selectedCity = value;
                  });
                },
                items: cities.map((String city) {
                  return DropdownMenuItem<String>(
                    value: city,
                    child: Text(city),
                  );
                }).toList(),
                decoration: InputDecoration(
                  labelText: 'Şehir',
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: _selectImage,
                child: Text(
                  'Resim Seç',
                  style: TextStyle(
                    color: Colors.white, // Set the text color to white
                  ),
                ),
              ),
              if (_selectedImage != null) ...[
                SizedBox(height: 16.0),
                Image.file(
                  File(_selectedImage!),
                  height: 200,
                ),
              ],
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: submitPost,
                child: Text(
                  'Kaydet',
                  style: TextStyle(
                    color: Colors.white, // Set the text color to white
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: AnimatedBottomBar(
          currentIndex: 0, // Set the current index according to your needs
          onTap: (index) {
            // Handle bottom bar item tap
          },
        ),
      ),
    );
  }
}

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
        itemCount: ads.length ~/
            3, // Divide by 3 since each ad consists of title, description, and city
        itemBuilder: (BuildContext context, int index) {
          int baseIndex = index * 3;
          String title = ads[baseIndex];
          String description = ads[baseIndex + 1];
          String city = ads[baseIndex + 2];

          return ListTile(
            title: Text(title),
            subtitle: Text(description),
            trailing: Text(city),
          );
        },
      ),
    );
  }
}*/
/*
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'bottombar.dart';
import 'turkey_cities.dart';

void main() {
  runApp(Ilan());
}

class Ilan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'İlan Ver',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      locale: const Locale('tr'),
      home: PostForm(),
    );
  }
}

class PostForm extends StatefulWidget {
  @override
  _PostFormState createState() => _PostFormState();
}

class _PostFormState extends State<PostForm> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _titleController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();
  String? _selectedImage;
  String? _selectedCity;

  List<String> ads = [];

  List<String> cities = turkeyCities;

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  void submitPost() {
    if (_formKey.currentState!.validate()) {
      ads.add(_titleController.text);
      ads.add(_descriptionController.text);
      ads.add(_selectedCity!);

      _titleController.clear();
      _descriptionController.clear();
      _selectedImage = null;
      _selectedCity = null;

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('İlan Gönderildi'),
            content: Text('İlan kaydetme başarılı.'),
            actions: <Widget>[
              TextButton(
                child: Text('TAMAM'),
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) =>
                          LookAtAdsPage(ads: ads),
                    ),
                  );
                },
              ),
            ],
          );
        },
      );
    }
  }

  Future<void> _selectImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _selectedImage = pickedFile.path;
      } else {
        _selectedImage = null;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'İlan Ver',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _titleController,
                decoration: InputDecoration(
                  labelText: 'Başlık',
                ),
                keyboardType: TextInputType.text,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(
                    RegExp(r'[a-zA-ZığüşöçĞÜŞİÖÇ\s]'),
                  ),
                ],
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Lütfen ilan başlığı girin.';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _descriptionController,
                decoration: InputDecoration(
                  labelText: 'Açıklama',
                ),
                keyboardType: TextInputType.text,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(
                    RegExp(r'[a-zA-ZığüşöçĞÜŞİÖÇ\s]'),
                  ),
                ],
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Lütfen ilan açıklaması girin.';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              DropdownButtonFormField<String>(
                value: _selectedCity,
                onChanged: (value) {
                  setState(() {
                    _selectedCity = value;
                  });
                },
                items: cities.map((String city) {
                  return DropdownMenuItem<String>(
                    value: city,
                    child: Text(city),
                  );
                }).toList(),
                decoration: InputDecoration(
                  labelText: 'Şehir',
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: _selectImage,
                child: Text(
                  'Resim Seç',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              if (_selectedImage != null) ...[
                SizedBox(height: 16.0),
                Image.file(
                  File(_selectedImage!),
                  height: 200,
                ),
              ],
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: submitPost,
                child: Text(
                  'Kaydet',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
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

class LookAtAdsPage extends StatelessWidget {
  final List<String> ads;

  LookAtAdsPage({required this.ads});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('İlanlara Bak'),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: ListView.builder(
        itemCount: ads.length ~/ 3,
        itemBuilder: (BuildContext context, int index) {
          int baseIndex = index * 3;
          String title = ads[baseIndex];
          String description = ads[baseIndex + 1];
          String city = ads[baseIndex + 2];

          return ListTile(
            title: Text(title),
            subtitle: Text(description),
            trailing: Text(city),
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
}*/

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'bottombar.dart';
import 'turkey_cities.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

//import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Ilan());
}

class Ilan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'İlan Ver',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      locale: const Locale('tr'),
      home: PostForm(),
    );
  }
}

class PostForm extends StatefulWidget {
  @override
  _PostFormState createState() => _PostFormState();
}

class _PostFormState extends State<PostForm> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _titleController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();
  String? _selectedImage;
  String? _selectedCity;

  List<String> ads = [];

  List<String> cities = turkeyCities;

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  void submitPost() {
    if (_formKey.currentState!.validate()) {
      ads.add(_titleController.text);
      ads.add(_descriptionController.text);
      ads.add(_selectedCity!);

      // Store the form data in Firestore
      FirebaseFirestore.instance.collection('ads').add({
        'title': _titleController.text,
        'description': _descriptionController.text,
        'city': _selectedCity!,
      });

      _titleController.clear();
      _descriptionController.clear();
      _selectedImage = null;
      _selectedCity = null;

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('İlan Gönderildi'),
            content: Text('İlan kaydetme başarılı.'),
            actions: <Widget>[
              TextButton(
                child: Text('TAMAM'),
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) =>
                          LookAtAdsPage(ads: ads),
                    ),
                  );
                },
              ),
            ],
          );
        },
      );
    }
  }

  Future<void> _selectImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _selectedImage = pickedFile.path;
      } else {
        _selectedImage = null;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'İlan Ver',
          style: TextStyle(
              color: Colors.amber.shade50,
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _titleController,
                decoration: InputDecoration(
                  labelText: 'Başlık',
                ),
                keyboardType: TextInputType.text,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(
                    RegExp(r'[a-zA-ZığüşöçĞÜŞİÖÇ\s]'),
                  ),
                ],
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Lütfen ilan başlığı girin.';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _descriptionController,
                decoration: InputDecoration(
                  labelText: 'Açıklama',
                ),
                keyboardType: TextInputType.text,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(
                    RegExp(r'[a-zA-ZığüşöçĞÜŞİÖÇ\s]'),
                  ),
                ],
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Lütfen ilan açıklaması girin.';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              DropdownButtonFormField<String>(
                value: _selectedCity,
                onChanged: (value) {
                  setState(() {
                    _selectedCity = value;
                  });
                },
                items: cities.map((String city) {
                  return DropdownMenuItem<String>(
                    value: city,
                    child: Text(city),
                  );
                }).toList(),
                decoration: InputDecoration(
                  labelText: 'Şehir',
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: _selectImage,
                child: Text(
                  'Resim Seç',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              if (_selectedImage != null) ...[
                SizedBox(height: 16.0),
                Image.file(
                  File(_selectedImage!),
                  height: 200,
                ),
              ],
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: submitPost,
                child: Text(
                  'Kaydet',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
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

class LookAtAdsPage extends StatelessWidget {
  final List<String> ads;

  LookAtAdsPage({required this.ads});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('İlanlara Bak'),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('ads').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          }

          return ListView.builder(
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (BuildContext context, int index) {
              String title = snapshot.data!.docs[index]['title'];
              String description = snapshot.data!.docs[index]['description'];
              String city = snapshot.data!.docs[index]['city'];

              return ListTile(
                title: Text(title),
                subtitle: Text(description),
                trailing: Text(city),
              );
            },
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
