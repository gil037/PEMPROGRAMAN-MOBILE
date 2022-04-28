import 'package:flutter/material.dart';

void main() => runApp(const gilang());

class gilang extends StatelessWidget {
  const gilang({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Praktikum Pemprograman Mobile',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 20,
        centerTitle: true,
        title: const Text(
          'POSTEST 1 GILANG YUDA PRATAMA',
          style: TextStyle(color: Colors.black, fontFamily: 'RussoOne'),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: <Color>[Colors.yellow, Colors.blue])),
        ),
      ),
      body: Center(
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Colors.blue, Colors.green]),
              color: Colors.lightBlueAccent,
              borderRadius: BorderRadius.circular(1),
              border: Border.all(
                width: 5,
                color: Colors.lightBlue,
              )),
          child: const Center(
            child: Text(
              'PEMPROGRAMAN MOBILE\nGILANG YUDA PRATAMA\n2009106119',
              style: TextStyle(
                  color: Color.fromARGB(255, 13, 13, 13),
                  fontSize: 60,
                  fontFamily: 'Rubik Moonrocks',
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
