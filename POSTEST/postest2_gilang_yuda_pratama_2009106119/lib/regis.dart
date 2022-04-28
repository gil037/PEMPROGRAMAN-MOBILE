import 'dart:io';

import 'package:flutter/material.dart';

class regis extends StatelessWidget {
  const regis({Key? key}) : super(key: key);

  Widget keluar() {
    return Container(
        alignment: Alignment.topLeft,
        child: IconButton(
          icon: Icon(Icons.exit_to_app),
          onPressed: () => exit(0),
        ));
  }

  Widget FirstName() {
    final maxLines = 1;

    return Container(
      margin: EdgeInsets.fromLTRB(40, 0, 40, 10),
      height: maxLines * 34.0,
      child: TextField(
        maxLines: maxLines,
        decoration: InputDecoration(
          hintText: " First Name",
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

  Widget BackName() {
    final maxLines = 1;

    return Container(
      margin: EdgeInsets.fromLTRB(40, 0, 40, 10),
      height: maxLines * 34.0,
      child: TextField(
        maxLines: maxLines,
        decoration: InputDecoration(
          hintText: " Back Name",
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

  Widget Username() {
    final maxLines = 1;

    return Container(
      margin: EdgeInsets.fromLTRB(40, 0, 40, 10),
      height: maxLines * 34.0,
      child: TextField(
        maxLines: maxLines,
        decoration: InputDecoration(
          hintText: " Username",
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

  Widget Password() {
    final maxLines = 1;

    return Container(
      margin: EdgeInsets.fromLTRB(40, 0, 40, 10),
      height: maxLines * 34.0,
      child: TextField(
        maxLines: maxLines,
        decoration: InputDecoration(
          hintText: " Password",
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

  Widget email() {
    final maxLines = 1;

    return Container(
      margin: EdgeInsets.fromLTRB(40, 0, 40, 10),
      height: maxLines * 34.0,
      child: TextField(
        maxLines: maxLines,
        decoration: InputDecoration(
          hintText: " Email",
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

  Widget phone() {
    final maxLines = 1;

    return Container(
      margin: EdgeInsets.fromLTRB(40, 0, 40, 10),
      height: maxLines * 34.0,
      child: TextField(
        maxLines: maxLines,
        decoration: InputDecoration(
          hintText: " Phone",
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

  Widget confirmPass() {
    final maxLines = 1;

    return Container(
      margin: EdgeInsets.fromLTRB(40, 0, 40, 10),
      height: maxLines * 34.0,
      child: TextField(
        maxLines: maxLines,
        decoration: InputDecoration(
          hintText: " Confirm Password",
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
          'REGISTER',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontFamily: 'RussoOne'),
        ),
      ),
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
              padding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 0.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/cargo.png'),
                radius: 150,
                backgroundColor: Color.fromARGB(255, 246, 246, 233),
              ),
            ),
            Container(
                child: Column(
              children: const [
                Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 20, fontFamily: 'Acme'),
                )
              ],
            )),
            FirstName(),
            BackName(),
            email(),
            phone(),
            Username(),
            Password(),
            confirmPass(),
            submit(),
            Container(
              margin: EdgeInsets.only(left: 135),
              child: Row(children: [
                Container(
                  child: Text('Now Use ?'),
                ),
                Container(
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('Sign In'),
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
