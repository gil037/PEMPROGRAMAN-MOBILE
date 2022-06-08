import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: landing(),
    );
  }
}

class landing extends StatefulWidget {
  const landing({super.key});

  @override
  State<landing> createState() => _landingState();
}

class textController extends GetxController {
  TextEditingController namaCtrl = TextEditingController();
  TextEditingController nimlCtrl = TextEditingController();
}

class CrudController extends GetxController {
  var id = ''.obs;
  var nama = ''.obs;
  var nim = ''.obs;
}

class FirestoreController extends GetxController {
  var users = FirebaseFirestore.instance.collection("users").obs;
}

class _landingState extends State<landing> {
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
                colors: <Color>[Colors.red, Colors.pink])),
        child: Column(
          children: [
            Container(
              height: 300,
              width: width,
              child: Center(
                child: Text(
                  "                 UAS\nPemprograman Mobile",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            Container(
              child: Image.network(
                'https://seeklogo.com/images/U/unmul-samarinda-logo-3A162DD32B-seeklogo.com.png',
                height: 200,
                width: 200,
              ),
            ),
            Container(
              width: 200,
              height: 45,
              margin: EdgeInsets.only(top: 130),
              child: ElevatedButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: Text(
                  'Open Second Screen',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: ((context) {
                    return second();
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

class second extends StatefulWidget {
  const second({super.key});

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    FirestoreController fsc = Get.put(FirestoreController());
    textController tc = Get.put(textController());
    CrudController crudController = Get.put(CrudController());
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.pink,
        title: Text(
          'Second Screen',
          style: TextStyle(color: Colors.white),
        ),
        shadowColor: Colors.black,
      ),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    end: Alignment.topCenter,
                    begin: Alignment.bottomCenter,
                    colors: <Color>[Colors.red, Colors.redAccent])),
            child: ListView(
              children: [
                Container(
                  width: 350,
                  height: 215,
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color.fromARGB(255, 236, 231, 231),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Input Data Pribadi',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: tc.namaCtrl,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.pink,
                          ),
                          filled: true,
                          fillColor: Colors.grey[200],
                          labelText: 'Nama',
                          hintText: 'Masukkan Nama',
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: tc.nimlCtrl,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.numbers,
                            color: Colors.pink,
                          ),
                          filled: true,
                          fillColor: Colors.grey[200],
                          labelText: 'NIM',
                          hintText: 'Masukkan NIM',
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(left: 30, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 100,
                        height: 30,
                        child: ElevatedButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          child: Text(
                            'Reset',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            ),
                          ),
                          onPressed: () {
                            tc.namaCtrl.clear();
                            tc.nimlCtrl.clear();
                          },
                        ),
                      ),
                      SizedBox(
                        width: 130,
                      ),
                      Container(
                        width: 100,
                        height: 30,
                        child: ElevatedButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          child: Text(
                            'Submit',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            ),
                          ),
                          onPressed: () {
                            fsc.users.value.add({
                              'nama': tc.namaCtrl.text,
                              'nim': tc.nimlCtrl.text,
                            });
                            final snackBar = SnackBar(
                              content: const Text('Data Anda diterima !'),
                              action: SnackBarAction(
                                label: 'Undo',
                                onPressed: () {
                                  // Some code to undo the change.
                                },
                              ),
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          },
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          Positioned(
            top: 300,
            child: Container(
              padding: EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 300,
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
              child: Card(
                child: Container(
                  height: 10,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ListView(
                    children: [
                      StreamBuilder<QuerySnapshot>(
                        stream: fsc.users.value.snapshots(),
                        builder: ((context, snapshot) {
                          return snapshot.hasData
                              ? Column(
                                  children: snapshot.data!.docs
                                      .map(
                                        (e) => ListTile(
                                          leading: Image.network(
                                            'https://seeklogo.com/images/U/unmul-samarinda-logo-3A162DD32B-seeklogo.com.png',
                                          ),
                                          title: Text(
                                            // Untuk read, tinggal panggil nama key-nya
                                            "${e.get('nama')}",
                                          ),
                                          subtitle: Text(
                                            "Nim: ${e.get('nim')}",
                                          ),
                                          // Tekan lama buat hapus
                                          onLongPress: () {
                                            showDialog<String>(
                                              context: context,
                                              builder: (BuildContext context) =>
                                                  AlertDialog(
                                                title: const Text('Hapus Data'),
                                                content: const Text(
                                                    'Kegiatan ini tidak dapat dikembalikan'),
                                                actions: <Widget>[
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            context, 'Cancel'),
                                                    child: const Text('Cancel'),
                                                  ),
                                                  TextButton(
                                                    onPressed: () {
                                                      // Queary untuk delete
                                                      fsc.users.value
                                                          .doc(e.id)
                                                          .delete();
                                                      Get.back();
                                                    },
                                                    child: const Text(
                                                      'Hapus',
                                                      style: TextStyle(
                                                          color: Colors.red),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            );
                                          },
                                        ),
                                      )
                                      .toList())
                              : Text("Ga ada");
                        }),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
