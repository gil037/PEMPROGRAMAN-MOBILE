import 'package:flutter/material.dart';
import 'package:tugas_mobile_pak_hario_2/first_page.dart';
import 'package:tugas_mobile_pak_hario_2/second_page.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: <String, WidgetBuilder>{
      '/': (context) => Home(),
      '/about': (context) => secondpage(),
    },
  ));
}

class MypApp extends StatelessWidget {
  const MypApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
