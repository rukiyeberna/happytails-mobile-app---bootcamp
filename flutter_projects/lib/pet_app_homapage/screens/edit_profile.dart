import 'package:flutter/material.dart';

import 'setting_screen.dart';

class SettingsUI extends StatelessWidget {
  const SettingsUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Settings UI",
      home: EditProfileScreen(),
    );
  }
}

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Profili Düzenle'),
        centerTitle: true,
        elevation: 1,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => SettingScreen()),
            );
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.send_outlined,
              color: Colors.white,
            ),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text("Bilgi"),
                    content: Text("Değişiklikler kaydedildi."),
                    actions: [
                      TextButton(
                        child: Text("Tamam"),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
          )
        ],
      ),
      body: Container(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context)
                .unfocus(); // Bunu kullanarak textfieldi diselected edebildik..
          },
          child: ListView(
            children: [
              SizedBox(height: 15),
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 4,
                            color: Colors.orange,
                          ),
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/jw.jpg'))),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: GestureDetector(
                        onTap: () {
                          // İkona tıklama işlemleri
                        },
                        child: Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 4, color: Colors.orange),
                            color: Colors.orange,
                          ),
                          child: Center(
                            child: InkWell(
                              onTap: () {
                                // İkona tıklama işlemleri
                              },
                              child: Icon(Icons.edit, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 35),
              buildTextField("Ad Soyad", "John Wick", false),
              buildTextField("E-mail", "johnwick06@gmail.com", false),
              buildTextField("Instagram Profili", "johnwick.de", false),
              buildTextField("Twitter Profili", "JohnWickUK", false),
              buildTextField("Facebook Profili", "JohnWickUK", false),
              buildTextField("Telefon Numarası", "5059985561", false),
              buildTextField("Şifre", "*********", true),
              buildTextField("Konum", "Ankara,Turkey", false),
              buildTextField(
                  "Hakkında",
                  "Hayvanları çok seviyorum ve köpeğim benim ailem gibi ona çok değer veriyorum.  Onunla düzenli ",
                  false),
              SizedBox(height: 2),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                OutlinedButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text("Uyarı"),
                              content:
                                  Text("Vazgeçmek istediğinize emin misiniz?"),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                EditProfileScreen()),
                                      );
                                    },
                                    child: Text("Evet"))
                              ],
                            );
                          });
                    },
                    child: Text('VAZGEÇ',
                        style: TextStyle(
                            fontSize: 14,
                            letterSpacing: 2.2,
                            color: Colors.black))),
                ElevatedButton(
                  onPressed: () {
                    () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Bilgi"),
                            content: Text("Değişiklikler kaydedildi."),
                            actions: [
                              TextButton(
                                child: Text("Tamam"),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    };
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.orange),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.symmetric(horizontal: 50)),
                    elevation: MaterialStateProperty.all<double>(1),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  child: Text(
                    "KAYDET",
                    style: TextStyle(
                      fontSize: 16,
                      letterSpacing: 2.2,
                      color: Colors.white,
                    ),
                  ),
                )
              ])
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(
      String labelText, String placeholder, bool isPasswordTextField) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35),
      child: TextField(
        obscureText: isPasswordTextField ? showPassword : false,
        decoration: InputDecoration(
          suffixIcon: isPasswordTextField
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      showPassword = !showPassword;
                    });
                  },
                  icon: Icon(
                    Icons.remove_red_eye,
                    color: Colors.grey,
                  ),
                )
              : null,
          contentPadding: EdgeInsets.only(bottom: 3),
          labelText: labelText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: placeholder,
          hintStyle: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
    );
  }
}
