import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:posttest4_gilang_yuda_pratama_2009106119/favorite.dart';
import 'package:posttest4_gilang_yuda_pratama_2009106119/home.dart';
import 'package:posttest4_gilang_yuda_pratama_2009106119/order.dart';
import 'package:posttest4_gilang_yuda_pratama_2009106119/pesanan.dart';
import 'package:posttest4_gilang_yuda_pratama_2009106119/profile.dart';

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
      home: home(),
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

  int _index = 0;
  List<Widget> _body = [order(), pesanan(), favorite(), profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (_) {
                //     return profile();
                //   }),
                // );
              },
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text("Pemberitahuan"),
              subtitle: Text("Pemberitahuan !"),
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
              leading: Icon(Icons.contact_support_outlined),
              title: Text("Dukungan"),
              subtitle: Text("Cara penggunaan aplikasi"),
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
