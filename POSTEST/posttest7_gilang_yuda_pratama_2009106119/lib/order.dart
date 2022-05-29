import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posttest7_gilang_yuda_pratama_2009106119/FirestoreController.dart';
import 'package:posttest7_gilang_yuda_pratama_2009106119/TextController.dart';

class order extends StatefulWidget {
  const order({super.key});

  @override
  State<order> createState() => _orderState();
}

enum Jenis { unknown, pecahBelah, Keras }

class _orderState extends State<order> {
  bool Nilaiswitch = false;
  Jenis? jenis = Jenis.unknown;
  String getJenis(Jenis? value) {
    if (value == Jenis.pecahBelah) {
      return "Pecah Belah";
    } else if (value == Jenis.Keras) {
      return "Keras";
    }
    return "";
  }

  @override
  Widget build(BuildContext context) {
    FirestoreController fsc = Get.put(FirestoreController());
    TextController tc = Get.put(TextController());
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 246, 246, 233),
          image: DecorationImage(
            colorFilter: new ColorFilter.mode(
                Color.fromARGB(255, 246, 246, 233).withOpacity(0.09),
                BlendMode.dstATop),
            image: AssetImage('assets/remove-cargo.png'),
            fit: BoxFit.contain,
          ),
        ),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(0, 20, 230, 0),
              child: Column(
                children: [
                  Text(
                    'Penjemputan',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Acme',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(17, 0, 20, 0),
              child: TextFormField(
                maxLines: 1,
                controller: tc.jemputCtrl,
                decoration: InputDecoration(
                  hintText: "Penjemputan",
                  prefixIcon: Icon(Icons.map),
                  hintStyle: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: null,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 0.5,
                    ),
                  ),
                  fillColor: Colors.white.withOpacity(0.3),
                  filled: true,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 20, 230, 0),
              child: Column(
                children: [
                  Text(
                    'Pengantaran',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Acme',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // pengantaran
              margin: EdgeInsets.fromLTRB(17, 0, 20, 0),
              child: TextFormField(
                maxLines: 1,
                controller: tc.antarCtrl,
                decoration: InputDecoration(
                  hintText: "Pengantaran",
                  prefixIcon: Icon(Icons.map),
                  hintStyle: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: null,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 0.5,
                    ),
                  ),
                  fillColor: Colors.white.withOpacity(0.3),
                  filled: true,
                ),
              ),
            ),
            Container(
              // tulisan Jenis Barang
              margin: EdgeInsets.fromLTRB(20, 20, 230, 0),
              alignment: Alignment.topLeft,
              child: Column(children: [
                Text(
                  'Jenis Barang',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Acme',
                    fontWeight: FontWeight.w900,
                  ),
                )
              ]),
            ),
            Container(
              // jenis barang
              child: Column(children: [
                ListTile(
                  title: Text(" Pecah Belah"),
                  leading: Radio(
                    groupValue: jenis,
                    value: Jenis.pecahBelah,
                    onChanged: (Jenis? value) {
                      setState(() {
                        jenis = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text(" Keras"),
                  leading: Radio(
                    groupValue: jenis,
                    value: Jenis.Keras,
                    onChanged: (Jenis? value) {
                      setState(() {
                        jenis = value;
                      });
                    },
                  ),
                ),
              ]),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 20, 245, 0),
              child: Column(
                children: [
                  Text(
                    'Dimension',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Acme',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // dimension
              margin: EdgeInsets.fromLTRB(17, 0, 20, 0),
              child: TextFormField(
                maxLines: 1,
                controller: tc.beratCtrl,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Berat Kg",
                  prefixIcon: Icon(Icons.line_weight),
                  hintStyle: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: null,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 0.5,
                    ),
                  ),
                  fillColor: Colors.white.withOpacity(0.3),
                  filled: true,
                ),
              ),
            ),
            Container(
              // TIP
              child: Column(
                children: [
                  SwitchListTile(
                    title: Text(
                      "Tip",
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Acme',
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    subtitle: Text("Jumlah akan ditambahkan ke biaya Order."),
                    value: Nilaiswitch,
                    activeTrackColor: Colors.grey,
                    activeColor: Colors.brown,
                    onChanged: (value) {
                      setState(() {
                        Nilaiswitch = value;
                      });
                    },
                  ),
                  Nilaiswitch
                      ? Container(
                          margin: EdgeInsets.fromLTRB(17, 0, 20, 0),
                          child: TextFormField(
                            maxLines: 1,
                            controller: tc.tipCtrl,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: "Tip",
                              prefixIcon: Icon(Icons.attach_money),
                              hintStyle: TextStyle(
                                color: Colors.black.withOpacity(0.5),
                                fontSize: null,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                  width: 0.5,
                                ),
                              ),
                              fillColor: Colors.white.withOpacity(0.3),
                              filled: true,
                            ),
                          ))
                      : Container()
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(17, 40, 40, 0),
              width: 315,
              height: 45,
              child: ElevatedButton(
                // tombol order
                onPressed: () {
                  fsc.users.value.add({
                    'penjemputan': tc.jemputCtrl.text,
                    'pengantaran': tc.antarCtrl.text,
                    'berat': tc.beratCtrl.text,
                    'tip': tc.tipCtrl.text,
                  });
                  final snackBar = SnackBar(
                    content: const Text('Pesanan Anda diterima !'),
                    action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {
                        // Some code to undo the change.
                      },
                    ),
                  );

                  // Find the ScaffoldMessenger in the widget tree
                  // and use it to show a SnackBar.
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  tc.jemputCtrl.clear();
                  tc.antarCtrl.clear();
                  tc.beratCtrl.clear();
                  tc.tipCtrl.clear();
                },
                style: TextButton.styleFrom(
                    backgroundColor: Colors.brown,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: Text(
                  "Order",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'RussoOne'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
