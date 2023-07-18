import 'package:flutter/material.dart';

class bildirimSayfasi extends StatefulWidget {
  const bildirimSayfasi({super.key});

  @override
  State<bildirimSayfasi> createState() => _bildirimSayfasiState();
}

class _bildirimSayfasiState extends State<bildirimSayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back),
              color: Colors.white),
          title: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 5,
            ),
            child: Text('Bildirimler',
                style: TextStyle(fontSize: 25.0, color: Colors.amber.shade50)),
          ),
        ),
        body: ListView.separated(
          itemCount: 1,
          separatorBuilder: (context, index) {
            return const Divider(
              color: Colors.black,
            );
          },
          itemBuilder: (context, index) {
            return Column(
              children: const [
                SizedBox(
                  height: 75,
                  child: Card(
                      child: ListTile(
                    leading: Icon(size: 40, color: Colors.black, Icons.person),
                    title: Text(
                      'Şifrenizi güncellediniz.',
                      style: TextStyle(fontSize: 17),
                    ),
                  )),
                ),
                SizedBox(
                  height: 75,
                  child: Card(
                      child: ListTile(
                    leading: Icon(size: 40, color: Colors.black, Icons.person),
                    title: Text(
                      'Kullanıcı adınızı güncellediniz.',
                      style: TextStyle(fontSize: 17),
                    ),
                  )),
                ),
                SizedBox(
                  height: 75,
                  child: Card(
                      child: ListTile(
                    leading: Icon(size: 40, color: Colors.black, Icons.person),
                    title: Text(
                      'İlan verdiniz.',
                      style: TextStyle(fontSize: 17),
                    ),
                  )),
                ),
                SizedBox(
                  height: 75,
                  child: Card(
                      child: ListTile(
                    leading: Icon(size: 40, color: Colors.black, Icons.person),
                    title: Text(
                      'Ali M. ilanınızı beğendi.',
                      style: TextStyle(fontSize: 17),
                    ),
                  )),
                ),
                SizedBox(
                  height: 75,
                  child: Card(
                      child: ListTile(
                    leading: Icon(size: 40, color: Colors.black, Icons.person),
                    title: Text(
                      'Elif G. yeni bir ilan paylaştı.',
                      style: TextStyle(fontSize: 17),
                    ),
                  )),
                ),
                SizedBox(
                  height: 75,
                  child: Card(
                      child: ListTile(
                    leading: Icon(size: 40, color: Colors.black, Icons.person),
                    title: Text(
                      'Telefon numaranızı güncellediniz.',
                      style: TextStyle(fontSize: 17),
                    ),
                  )),
                ),
                SizedBox(
                  height: 75,
                  child: Card(
                      child: ListTile(
                    leading: Icon(size: 40, color: Colors.black, Icons.person),
                    title: Text(
                      'Ecmel A. profilinize yıldız verdi.',
                      style: TextStyle(fontSize: 17),
                    ),
                  )),
                ),
                SizedBox(
                  height: 75,
                  child: Card(
                      child: ListTile(
                    leading: Icon(size: 40, color: Colors.black, Icons.person),
                    title: Text(
                      'Profil bilgilerinizi güncellediniz.',
                      style: TextStyle(fontSize: 17),
                    ),
                  )),
                ),
                SizedBox(
                  height: 75,
                  child: Card(
                      child: ListTile(
                    leading: Icon(size: 40, color: Colors.black, Icons.person),
                    title: Text(
                      'Profil bilgilerinizi güncellediniz.',
                      style: TextStyle(fontSize: 17),
                    ),
                  )),
                ),
                SizedBox(
                  height: 75,
                  child: Card(
                      child: ListTile(
                    leading: Icon(size: 40, color: Colors.black, Icons.person),
                    title: Text(
                      'Profil bilgilerinizi güncellediniz.',
                      style: TextStyle(fontSize: 17),
                    ),
                  )),
                ),
                SizedBox(
                  height: 75,
                  child: Card(
                      child: ListTile(
                    leading: Icon(size: 40, color: Colors.black, Icons.person),
                    title: Text(
                      'Profil bilgilerinizi güncellediniz.',
                      style: TextStyle(fontSize: 17),
                    ),
                  )),
                ),
                SizedBox(
                  height: 75,
                  child: Card(
                      child: ListTile(
                    leading: Icon(size: 40, color: Colors.black, Icons.person),
                    title: Text(
                      'Profil bilgilerinizi güncellediniz.',
                      style: TextStyle(fontSize: 17),
                    ),
                  )),
                ),
              ],
            );
          },
        ));
  }
}
