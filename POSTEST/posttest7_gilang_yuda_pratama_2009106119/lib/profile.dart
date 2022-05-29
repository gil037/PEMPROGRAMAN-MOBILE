import 'package:flutter/material.dart';
import 'package:posttest7_gilang_yuda_pratama_2009106119/home.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
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
              child: ListView(
                children: [
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "",
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Fjalla',
                              wordSpacing: 1,
                              inherit: false),
                        ),
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/cargo.png'),
                          radius: 70,
                          backgroundColor: Colors.brown,
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.person_sharp),
                    title: Text("Nama Lengkap"),
                    subtitle: Text("Data belum diisi"),
                    tileColor: Color.fromARGB(255, 246, 246, 233),
                  ),
                  ListTile(
                    leading: Icon(Icons.phone),
                    title: Text("Nomer Telepon"),
                    subtitle: Text("+62 13 4726 2811"),
                    tileColor: Color.fromARGB(255, 246, 246, 233),
                  ),
                  ListTile(
                    leading: Icon(Icons.wc),
                    title: Text("Jenis Kelamin"),
                    subtitle: Text("Data belum diisi"),
                    tileColor: Color.fromARGB(255, 246, 246, 233),
                  ),
                  ListTile(
                    leading: Icon(Icons.calendar_view_day),
                    title: Text("Tanggal Lahir"),
                    subtitle: Text("Data belum diisi"),
                    tileColor: Color.fromARGB(255, 246, 246, 233),
                  ),
                  ListTile(
                    leading: Icon(Icons.mail),
                    title: Text("Email"),
                    subtitle: Text("Data belum diisi"),
                    tileColor: Color.fromARGB(255, 246, 246, 233),
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
