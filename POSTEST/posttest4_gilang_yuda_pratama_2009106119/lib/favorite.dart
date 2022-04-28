import 'package:flutter/material.dart';
import 'package:posttest4_gilang_yuda_pratama_2009106119/home.dart';

class favorite extends StatefulWidget {
  const favorite({Key? key}) : super(key: key);

  @override
  State<favorite> createState() => _favoriteState();
}

class _favoriteState extends State<favorite> {
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
                  Icons.favorite,
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
