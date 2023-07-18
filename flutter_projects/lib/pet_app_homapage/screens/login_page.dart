import 'package:flutter/material.dart';
import 'package:untitled/pet_app_homapage/anasayfa.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HAPPYTAILS GİRİŞ SAYFASI',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.orange)
              .copyWith(secondary: Colors.orange[600])),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "happytails",
            style: TextStyle(fontSize: 25.0, color: Colors.amber.shade50),
          ),
          centerTitle: true,
        ),
        body: LoginHome(),
      ),
    );
  }
}

class LoginHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _LoginHome(context);
  }
}

class ForgotPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Şifremi Unuttum",
          style: TextStyle(fontSize: 20.0, color: Colors.white),
        ),
      ),
      body: _ForgotPasswordPage(),
    );
  }
}

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Kayıt Ol",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: _RegisterPage(),
    );
  }
}

Widget _LoginHome(BuildContext context) {
  final emailField = TextField(
    obscureText: false,
    decoration: InputDecoration(
      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      hintText: "E-posta",
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
    ),
  );

  final passwordField = TextField(
    obscureText: true,
    decoration: InputDecoration(
      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      hintText: "Parola",
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
    ),
  );

  final loginButton = Material(
    elevation: 5.0,
    borderRadius: BorderRadius.circular(30.0),
    color: Colors.orange[300],
    child: MaterialButton(
      minWidth: MediaQuery.of(context).size.width,
      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Anasayfa()),
        );
      },
      child: Text(
        "Giriş Yap",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontStyle: FontStyle.normal),
      ),
    ),
  );

  final registerButton = Material(
    elevation: 5.0,
    borderRadius: BorderRadius.circular(30.0),
    color: Colors.orange[300],
    child: MaterialButton(
      minWidth: MediaQuery.of(context).size.width,
      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => RegisterPage()),
        );
      },
      child: Text(
        "Kayıt 0l",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontStyle: FontStyle.normal),
      ),
    ),
  );

  final googleButton = IconButton(
    iconSize: 250,
    icon: Image.asset(
      'assets/pet_apps/google.jpeg',
    ),
    onPressed: () {
      // Google Gmail adresiyle giriş işlemleri burada yapılacak
    },
  );

  return Center(
    child: Container(
      child: Padding(
        padding: const EdgeInsets.all(36.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/pet_apps/pet-house (3).png",
              scale: 1.8,
            ),
            SizedBox(height: 10.0),
            emailField,
            SizedBox(height: 10.0),
            passwordField,
            SizedBox(height: 15.0),
            loginButton,
            SizedBox(height: 10.0),
            registerButton,
            SizedBox(height: 10.0),
            Align(
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ForgotPasswordPage()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0, right: 8.0),
                  child: Text(
                    'Şifremi Unuttum!',
                    style: TextStyle(color: Colors.blue[600]),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            googleButton,
          ],
        ),
      ),
    ),
  );
}

Widget _ForgotPasswordPage() {
  final emailField = TextField(
    obscureText: false,
    decoration: InputDecoration(
      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      hintText: "E-posta",
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
    ),
  );

  final sendButton = Material(
    elevation: 5.0,
    borderRadius: BorderRadius.circular(30.0),
    color: Colors.orange[300],
    child: MaterialButton(
      minWidth: double.infinity,
      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      onPressed: () {},
      child: Text(
        "Yeni Şifre Gönder",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontStyle: FontStyle.normal),
      ),
    ),
  );

  return Container(
    child: Padding(
      padding: const EdgeInsets.all(36.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 10.0),
          emailField,
          SizedBox(height: 15.0),
          sendButton,
        ],
      ),
    ),
  );
}

Widget _RegisterPage() {
  final nameField = TextField(
    obscureText: false,
    decoration: InputDecoration(
      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      hintText: "Ad",
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
    ),
  );

  final emailField = TextField(
    obscureText: false,
    decoration: InputDecoration(
      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      hintText: "E-posta",
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
    ),
  );

  final passwordField = TextField(
    obscureText: true,
    decoration: InputDecoration(
      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      hintText: "Parola",
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
    ),
  );

  final registerButton = Material(
    elevation: 5.0,
    borderRadius: BorderRadius.circular(30.0),
    color: Colors.orange[300],
    child: MaterialButton(
      minWidth: double.infinity,
      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      onPressed: () {},
      child: const Text(
        "Kayıt Ol",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontStyle: FontStyle.normal),
      ),
    ),
  );

  return Container(
    child: Padding(
      padding: const EdgeInsets.all(36.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 10.0),
          nameField,
          SizedBox(height: 10.0),
          emailField,
          SizedBox(height: 10.0),
          passwordField,
          SizedBox(height: 15.0),
          registerButton,
        ],
      ),
    ),
  );
}
