import 'package:flutter/material.dart';
import 'package:posttest5_gilang_yuda_pratama_2009106119/home.dart';

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
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: MediaQuery.of(context).size.height,
                    margin: EdgeInsets.fromLTRB(5, 10, 5, 5),
                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                    decoration: BoxDecoration(
                      color: Colors.yellow.withOpacity(0.5),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              child: Icon(Icons.location_on_outlined),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10, top: 2),
                              child: Text(
                                "Halte Bus Lembuswana",
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 121, top: 2),
                              child: IconButton(
                                icon: Icon(Icons.more_vert),
                                onPressed: () {},
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              child: Icon(Icons.location_history),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                "Jalan Gerilya Gang Sepakat 11",
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
