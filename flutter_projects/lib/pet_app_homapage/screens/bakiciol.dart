/*import 'package:flutter/material.dart';

class BakiciOl extends StatefulWidget {
  const BakiciOl({super.key});

  @override
  State<BakiciOl> createState() => _BakiciOlState();
}

class _BakiciOlState extends State<BakiciOl> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bakıcı Ol'),
        backgroundColor: Colors.orange,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.amber.shade50,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 10),
              child: Row(
                children: [
                  // IconButton(
                  //onPressed: () {},
                  //icon: const Icon(Icons.arrow_back),
                  //color: Colors.white,
                  //),
                  /*Text(
                    "Bakıcı Ol",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontSize: 25, color: Colors.white),
                  ),*/
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Icon(Icons.error_outline),
                  Text(
                    "Bakıcı olmak için aşağıdaki adımları tamamlamalısın",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(25, 90, 25, 0),
              child: Card(
                  shape: StadiumBorder(),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: TextField(
                      decoration: InputDecoration(hintText: "Kullanıcı adı"),
                    ),
                  )),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(25, 25, 25, 0),
              child: Card(
                  shape: StadiumBorder(),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: TextField(
                      autofillHints: [AutofillHints.password],
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Şifre",
                      ),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}*/
import 'package:flutter/material.dart';

class BakiciOl extends StatefulWidget {
  const BakiciOl({Key? key}) : super(key: key);

  @override
  State<BakiciOl> createState() => _BakiciOlState();
}

class _BakiciOlState extends State<BakiciOl> {
  @override
  Widget build(BuildContext context) {
    final registerButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.orange[300],
      child: MaterialButton(
        minWidth: double.infinity,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {},
        child: Text(
          "Kayıt Ol",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontStyle: FontStyle.normal),
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Bakıcı Ol'),
        backgroundColor: Colors.orange,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.amber.shade50,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 10),
              child: Row(
                children: [
                  // IconButton(
                  //onPressed: () {},
                  //icon: const Icon(Icons.arrow_back),
                  //color: Colors.white,
                  //),
                  /*Text(
                    "Bakıcı Ol",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontSize: 25, color: Colors.white),
                  ),*/
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Icon(Icons.error_outline),
                  Text(
                    "Bakıcı olmak için aşağıdaki adımları tamamlamalısın",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(25, 90, 25, 0),
              child: Card(
                shape: StadiumBorder(),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    decoration: InputDecoration(hintText: "Kullanıcı adı"),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(25, 25, 25, 0),
              child: Card(
                shape: StadiumBorder(),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    autofillHints: [AutofillHints.password],
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Şifre",
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 25, 25, 0),
              child: registerButton,
            ),
          ],
        ),
      ),
    );
  }
}
