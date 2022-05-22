import 'dart:io';
import 'package:flutter/material.dart';
import 'package:posttest6_gilang_yuda_pratama_2009106119/main.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  Widget keluar() {
    return Container(
        margin: EdgeInsets.only(top: 20),
        alignment: Alignment.topRight,
        child: IconButton(
          icon: Icon(Icons.exit_to_app),
          onPressed: () => exit(0),
        ));
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
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
            ])),
        child: Column(
          children: [
            keluar(),
            Container(
              padding: EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 0.0),
              child: Image(
                image: AssetImage('assets/cover.png'),
              ),
            ),
            Container(
              width: 200,
              height: 45,
              margin: EdgeInsets.only(top: 30),
              child: ElevatedButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.brown,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: Text(
                  'Tap In Order',
                  style: TextStyle(fontFamily: 'Acme', fontSize: 20),
                ),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: ((context) {
                    return SecondPage();
                  })));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
