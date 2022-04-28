import 'package:flutter/material.dart';
import 'package:postest2_gilang_yuda_pratama_2009106119/home.dart';
import 'package:postest2_gilang_yuda_pratama_2009106119/regis.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: home(),
    );
  }
}
