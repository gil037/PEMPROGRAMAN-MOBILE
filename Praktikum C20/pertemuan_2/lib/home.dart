import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  Widget container() {
    return Container(
      width: 200,
      height: 800,
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/kopi.png'))),
    );
  }

  Widget container2() {
    return Container(
      width: 200,
      height: 800,
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/esteh.jpeg'))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pertemuan 2'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  container(),
                  container2(),
                  container(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
