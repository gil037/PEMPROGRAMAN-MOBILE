import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nurhidayah Anugrah"),
        backgroundColor: Colors.black,
        shadowColor: Colors.pink,
      ),
      drawer: Drawer(
        child: ListView(children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.black38),
            child: Text("Ayra's Header"),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Profil"),
            tileColor: Colors.redAccent,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return SecondPage();
              }));
            },
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            tileColor: Colors.green,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return ThirdPages();
              }));
            },
          )
        ]),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) {
                return SecondPage();
              }),
            );
          },
          child: Text("Halaman dua"),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  SecondPage({Key? key}) : super(key: key);

  List<Widget> _tabs = [
    Tab(text: "Chat"),
    Tab(text: "Status"),
    Tab(text: "Call"),
  ];

  List<Widget> _tabBody = [
    Icon(Icons.chat),
    Icon(Icons.photo),
    Icon(Icons.phone),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        body: TabBarView(children: _tabBody),
        appBar: AppBar(
          title: Text("Whatsapp"),
          backgroundColor: Colors.black87,
          shadowColor: Colors.pink,
          bottom: TabBar(tabs: _tabs),
        ),
      ),
    );
  }
}

class ThirdPages extends StatefulWidget {
  const ThirdPages({Key? key}) : super(key: key);

  @override
  State<ThirdPages> createState() => _ThirdPagesState();
}

class _ThirdPagesState extends State<ThirdPages> {
  List<BottomNavigationBarItem> _navbarItem = [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
    BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
    BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
  ];

  int _index = 0;
  List<Widget> _body = [
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.yellow,
    ),
    Container(
      color: Colors.green,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nurhidayah Anugrah"),
        backgroundColor: Colors.black,
        shadowColor: Colors.pink,
      ),
      body: _body.elementAt(_index),
      bottomNavigationBar: BottomNavigationBar(
        items: _navbarItem,
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
