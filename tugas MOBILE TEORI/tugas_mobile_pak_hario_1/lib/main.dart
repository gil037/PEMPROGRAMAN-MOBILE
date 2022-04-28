import 'package:flutter/material.dart';
import 'package:tugas_mobile_pak_hario/flutter.dart';

void main() {
  runApp(const MypApp());
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
