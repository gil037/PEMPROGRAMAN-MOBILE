import 'dart:convert';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pertemuan 1 C20',
      home: home(),
    );
  }
}

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var panjang = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Pertemuan 1'),
        backgroundColor: Color.fromARGB(255, 236, 213, 2),
        shadowColor: Color.fromARGB(255, 234, 250, 89),
      ),
      body: Center(
        child: Container(
          width: lebar / 1,
          height: panjang / 2,
          decoration: BoxDecoration(
              color: Colors.yellowAccent,
              borderRadius: BorderRadius.circular(360),
              border: Border.all(
                width: 5,
                color: Color.fromARGB(255, 236, 213, 2),
              )),
          child: const Center(
            child: Text(
              'MAXIM',
              style: TextStyle(
                color: Color.fromARGB(255, 7, 7, 7),
                fontSize: 50,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
