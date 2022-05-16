import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:posttest5_gilang_yuda_pratama_2009106119/favorite.dart';
import 'package:posttest5_gilang_yuda_pratama_2009106119/home.dart';
import 'package:posttest5_gilang_yuda_pratama_2009106119/order.dart';
import 'package:posttest5_gilang_yuda_pratama_2009106119/pesanan.dart';
import 'package:posttest5_gilang_yuda_pratama_2009106119/profile.dart';
import 'package:posttest5_gilang_yuda_pratama_2009106119/splash_screen.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Delivery Service',
      home: splash_screen(),
    );
  }
}

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  List<BottomNavigationBarItem> navbarItem = [
    BottomNavigationBarItem(icon: Icon(Icons.map), label: "Order"),
    BottomNavigationBarItem(icon: Icon(Icons.assignment), label: "Pesanan"),
    BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorit"),
    BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
  ];

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  int _index = 0;
  List<Widget> _body = [order(), pesanan(), favorite(), profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 246, 246, 233),
        title: Text(
          'Delivery Service',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Acme',
          ),
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              icon: const Icon(
                Icons.menu,
                color: Colors.black26,
                size: 30,
              ),
            );
          },
        ),
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/cargo.png'),
            backgroundColor: Color.fromARGB(255, 246, 246, 233),
            radius: 35,
          )
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white.withOpacity(0.5),
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                  gradient: RadialGradient(radius: 2.0, colors: <Color>[
                Colors.brown.shade400,
                Colors.brown,
              ])),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 100,
                  ),
                  Text(
                    "Gilang Yuda Pratama",
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Fjalla',
                        wordSpacing: 1,
                        inherit: false),
                  )
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.person_outline),
              title: Text("Profil Saya"),
              subtitle: Text("Account pengguna aplikasi"),
              tileColor: Color.fromARGB(255, 246, 246, 233),
              onTap: () {
                _scaffoldKey.currentState!.openEndDrawer();
                setState(() {
                  _index = 3;
                });
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              subtitle: Text("Pengaturan Aplikasi"),
              tileColor: Color.fromARGB(255, 246, 246, 233),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) {
                    return settings();
                  }),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text("Pemberitahuan"),
              subtitle: Text("Pemberitahuan !"),
              tileColor: Color.fromARGB(255, 246, 246, 233),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) {
                    return pemberitahuan();
                  }),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_support_outlined),
              title: Text("Dukungan"),
              subtitle: Text("Cara penggunaan aplikasi"),
              tileColor: Color.fromARGB(255, 246, 246, 233),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) {
                    return dukungan();
                  }),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.code_rounded),
              title: Text("Kode Promo"),
              subtitle: Text("Kode potongan harga"),
              tileColor: Color.fromARGB(255, 246, 246, 233),
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (_) {
                //     return profile();
                //   }),
                // );
              },
            ),
            ListTile(
              leading: Icon(Icons.settings_applications),
              title: Text("Tentang Aplikasi"),
              subtitle: Text("Spesifikasi Aplikasi"),
              tileColor: Color.fromARGB(255, 246, 246, 233),
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (_) {
                //     return profile();
                //   }),
                // );
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text("Kebijakan Privasi"),
              subtitle: Text("Isi dan izin dari aplikasi"),
              tileColor: Color.fromARGB(255, 246, 246, 233),
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (_) {
                //     return profile();
                //   }),
                // );
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Log Out"),
              subtitle: Text("Keluar dari aplikasi"),
              tileColor: Color.fromARGB(255, 246, 246, 233),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) {
                    return home();
                  }),
                );
              },
            ),
            ListTile(
              title: Text(""),
              tileColor: Color.fromARGB(255, 246, 246, 233),
            ),
          ],
        ),
      ),
      body: _body.elementAt(_index),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.brown,
        unselectedItemColor: Colors.grey,
        items: navbarItem,
        currentIndex: _index,
        onTap: (i) {
          setState(() {
            _index = i;
          });
        },
      ),
    );
  }
}

// ignore: camel_case_types
class settings extends StatelessWidget {
  const settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Settings",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 246, 246, 233),
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.black,
            onPressed: () => Navigator.pop(context)),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            end: Alignment.centerRight,
            begin: Alignment.centerLeft,
            colors: <Color>[
              Color.fromARGB(255, 235, 238, 231),
              Color.fromARGB(255, 235, 238, 231),
            ],
          ),
        ),
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.location_city),
              title: Text("Area"),
              subtitle: Text("Samarinda"),
              tileColor: Colors.black,
            ),
            ListTile(
              leading: Icon(Icons.language),
              title: Text("Bahasa"),
              subtitle: Text("Bahasa Indonesia"),
              tileColor: Colors.black,
            ),
            ListTile(
              leading: Icon(Icons.wb_sunny_sharp),
              title: Text("Tema"),
              subtitle: Text("Terang"),
              tileColor: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}

class pemberitahuan extends StatelessWidget {
  const pemberitahuan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pemberitahuan",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 246, 246, 233),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            end: Alignment.centerRight,
            begin: Alignment.centerLeft,
            colors: <Color>[
              Color.fromARGB(255, 235, 238, 231),
              Color.fromARGB(255, 235, 238, 231),
            ],
          ),
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(20.0, 150.0, 20.0, 0.0),
              child: Image(
                image: AssetImage('assets/kurir.png'),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
              child: Text(
                "Disini akan muncul pemberitahuan\n" +
                    "                               dari layanan          ",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w100,
                  fontFamily: "Acme",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class dukungan extends StatelessWidget {
  String komentar = '';
  String saran = '';
  late var ctrlKomentar = TextEditingController();
  late var ctrlSaran = TextEditingController();
  dukungan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dukungan",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 246, 246, 233),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            end: Alignment.centerRight,
            begin: Alignment.centerLeft,
            colors: <Color>[
              Color.fromARGB(255, 235, 238, 231),
              Color.fromARGB(255, 235, 238, 231),
            ],
          ),
        ),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(30.0, 30.0, 0.0, 0.0),
              child: Text(
                "Komentar",
                style: TextStyle(
                  fontSize: 15,
                  letterSpacing: 1.0,
                  // fontWeight: FontWeight.bold,
                  fontFamily: "RussoOne",
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(30.0, 5.0, 30.0, 10.0),
              child: TextFormField(
                maxLines: 4,
                controller: ctrlKomentar,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1.0,
                      style: BorderStyle.solid,
                    ),
                  ),
                  hintText: "Komentar",
                  hintStyle: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: null,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                  fillColor: Colors.white.withOpacity(0.5),
                  filled: true,
                ),
                cursorColor: Colors.grey,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(30.0, 30.0, 0.0, 0.0),
              child: Text(
                "Saran",
                style: TextStyle(
                  fontSize: 15,
                  letterSpacing: 1.0,
                  // fontWeight: FontWeight.bold,
                  fontFamily: "RussoOne",
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(30.0, 5.0, 30.0, 10.0),
              child: TextFormField(
                maxLines: 4,
                controller: ctrlSaran,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1.0,
                      style: BorderStyle.solid,
                    ),
                  ),
                  hintText: "Saran",
                  hintStyle: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: null,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                  fillColor: Colors.white.withOpacity(0.5),
                  filled: true,
                ),
                cursorColor: Colors.grey,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(40, 15, 40, 0),
              width: 315,
              height: 45,
              child: ElevatedButton(
                // tombol order
                style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 246, 246, 233),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                onPressed: () {
                  setState(() {
                    komentar = ctrlKomentar.text;
                    saran = ctrlSaran.text;
                  });
                  void sweatAlert(BuildContext context) {
                    Alert(
                      context: context,
                      type: AlertType.success,
                      title: "Success Submit",
                      desc: "Selamat anda berhasil memberikan ulasan",
                      buttons: [
                        DialogButton(
                          color: Colors.brown,
                          child: Text(
                            "Oke",
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                          onPressed: () => Navigator.pop(context),
                        ),
                        DialogButton(
                          color: Colors.brown,
                          child: Text(
                            "Tidak",
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                          onPressed: () => Navigator.pop(context),
                        )
                      ],
                    ).show();
                    return;
                  }

                  sweatAlert(context);
                  komentar = "";
                  saran = "";
                },
                child: Text(
                  "Kirim",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'RussoOne'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}
