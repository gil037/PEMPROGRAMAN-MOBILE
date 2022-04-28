import 'package:flutter/material.dart';
import 'package:posttest4_gilang_yuda_pratama_2009106119/home.dart';

class pesanan extends StatefulWidget {
  const pesanan({Key? key}) : super(key: key);

  @override
  State<pesanan> createState() => _pesananState();
}

class _pesananState extends State<pesanan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 246, 246, 233),
              ),
              child: Center(
                child: Icon(
                  Icons.assignment_return,
                  size: 50,
                  color: Colors.brown,
                  shadows: [],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
