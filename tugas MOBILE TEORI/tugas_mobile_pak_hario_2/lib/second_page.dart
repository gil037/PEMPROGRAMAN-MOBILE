import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class secondpage extends StatefulWidget {
  const secondpage({Key? key}) : super(key: key);

  @override
  State<secondpage> createState() => _HomeState();
}

class _HomeState extends State<secondpage> {
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
                  "\nGilang Yuda Pratama",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                ),
                Text(
                  "\n2009106119",
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
