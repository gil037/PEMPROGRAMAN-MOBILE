import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

enum Gender { unknown, cowok, cewek }

class _MyHomePageState extends State<MyHomePage> {
  int angka = 0;
  bool isSehat = false;
  Gender? gender = Gender.unknown;
  String namadepan = '', namabelakang = '';
  final ctrlNamaDepan = TextEditingController();
  final ctrlNamaBelakang = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    ctrlNamaDepan.dispose();
    ctrlNamaBelakang.dispose();
    super.dispose();
  }

  String getGender(Gender? value) {
    if (value == Gender.cowok) {
      return "Cowok";
    } else if (value == Gender.cewek) {
      return "Cewek";
    }
    return "";
  }

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference users = firestore.collection("users");

    return Scaffold(
      appBar: AppBar(title: Text("PERTEMUAN 3")),
      body: ListView(
        children: [
          Column(
            children: [
              // Text("ini angka ke: $angka"),
              Text("\nNama Saya $namadepan $namabelakang"),
              Text("Saya ${isSehat ? "Wibu" : "Tidak Wibu"}"),
              // Text("Saya ${gender == Gender.cowok ? "Cowok" : "Cewek"}"),
              Text("Saya ${getGender(gender)}"),
              TextField(
                controller: ctrlNamaDepan,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Nama Depan",
                  hintText: "Isi Nama Depan",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                maxLines: 4,
                controller: ctrlNamaBelakang,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Nama Belakang",
                  hintText: "Isi Nama Belakang",
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    users.add({
                      "nama depan": ctrlNamaDepan.text,
                      "nama belakang": ctrlNamaBelakang.text,
                    });
                    setState(() {
                      namadepan = ctrlNamaDepan.text;
                      namabelakang = ctrlNamaBelakang.text;
                    });
                    ctrlNamaDepan.text = '';
                    ctrlNamaBelakang.text = '';
                  },
                  child: Text("Tampilkan")),
              ListTile(
                title: Text("WIBU ? "),
                leading: Checkbox(
                  value: isSehat,
                  onChanged: (bool? value) {
                    setState(() {
                      isSehat = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title: Text(" Cowok"),
                leading: Radio(
                  groupValue: gender,
                  value: Gender.cowok,
                  onChanged: (Gender? value) {
                    setState(() {
                      gender = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: Text(" Cewek"),
                leading: Radio(
                  groupValue: gender,
                  value: Gender.cewek,
                  onChanged: (Gender? value) {
                    setState(() {
                      gender = value;
                    });
                  },
                ),
              )
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   crossAxisAlignment: CrossAxisAlignment.center,
              //   children: [
              //   ElevatedButton(
              //       child: Text("tambah"),
              //       onPressed: (){
              //       setState(() {
              //         angka++;
              //       });
              //     },
              //     ),
              //   TextButton(
              //     child: Text("Kurang"),
              //     onPressed: (){
              //     setState(() {
              //       angka--;
              //     });
              //   }, ),
              //   OutlinedButton(
              //     child: Text("Kurang"),
              //     onPressed: (){
              //     setState(() {
              //       angka--;
              //     });
              //   }, )
              // ],)
            ],
          )
        ],
      ),
    );
  }
}
