import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text('Gilang Yuda Pratama'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 100),
            width: 150,
            height: 300,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/gilang.jpg'),
                    fit: BoxFit.contain)),
          ),
          Container(
            child: Column(
              children: [
                Text(
                  "\nINFORMATIKA",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                ),
                Text(
                  "2020\n",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
