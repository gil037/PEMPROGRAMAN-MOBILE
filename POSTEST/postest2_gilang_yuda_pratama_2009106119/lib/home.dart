// import 'dart:html';
import 'dart:io';

import 'package:flutter/material.dart';
import 'regis.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  Widget keluar() {
    return Container(
        alignment: Alignment.topLeft,
        child: IconButton(
          icon: Icon(Icons.exit_to_app),
          onPressed: () => exit(0),
        ));
  }

  Widget username() {
    final maxLines = 1;

    return Container(
      margin: EdgeInsets.fromLTRB(40, 0, 40, 10),
      height: maxLines * 34.0,
      child: TextField(
        maxLines: maxLines,
        decoration: InputDecoration(
          hintText: "Enter a Username",
          hintStyle: TextStyle(
            color: Colors.black.withOpacity(0.5),
            fontSize: null,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          fillColor: Colors.white.withOpacity(0.3),
          filled: true,
        ),
      ),
    );
  }

  Widget password() {
    final maxLines = 1;

    return Container(
      margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
      height: maxLines * 34.0,
      child: TextField(
        maxLines: maxLines,
        decoration: InputDecoration(
          hintText: "Enter a Password",
          hintStyle: TextStyle(
            color: Colors.black.withOpacity(0.5),
            fontSize: null,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          fillColor: Colors.white.withOpacity(0.3),
          filled: true,
        ),
      ),
    );
  }

  Widget submit() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      width: 200,
      height: 45,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: Colors.brown,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            )),
        onPressed: () {},
        child: Text(
          'LOGIN',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontFamily: 'RussoOne'),
        ),
      ),
    );
  }

  Widget create_account() {
    return Container(
      margin: EdgeInsets.only(left: 100),
      child: Row(children: [
        Container(
          child: Text('Now Use ?'),
        ),
        Container(
          child: TextButton(
            onPressed: () {},
            child: Text('Create on Account'),
          ),
        )
      ]),
    );
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
              Color.fromARGB(255, 246, 246, 233),
              Color.fromARGB(255, 246, 246, 233),
            ])),
        child: Column(
          children: [
            keluar(),
            Container(
              padding: EdgeInsets.fromLTRB(30.0, 120.0, 30.0, 0.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/cargo.png'),
                radius: 180,
                backgroundColor: Color.fromARGB(255, 246, 246, 233),
              ),
            ),
            Container(
                child: Column(
              children: const [
                Text(
                  'Sign In',
                  style: TextStyle(fontSize: 20, fontFamily: 'Acme'),
                )
              ],
            )),
            username(),
            password(),
            submit(),
            Container(
              margin: EdgeInsets.only(left: 100),
              child: Row(children: [
                Container(
                  child: Text('Now Use ?'),
                ),
                Container(
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: ((context) {
                        return regis();
                      })));
                    },
                    child: Text('Create on Account'),
                  ),
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
