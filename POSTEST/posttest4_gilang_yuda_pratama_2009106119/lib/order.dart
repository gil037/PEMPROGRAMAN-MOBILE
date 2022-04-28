import 'package:flutter/material.dart';
import 'package:posttest4_gilang_yuda_pratama_2009106119/home.dart';
import 'package:posttest4_gilang_yuda_pratama_2009106119/main.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class order extends StatefulWidget {
  const order({Key? key}) : super(key: key);

  @override
  State<order> createState() => _orderState();
}

enum Jenis { unknown, pecahBelah, Keras }

class _orderState extends State<order> {
  String jemput = '';
  String antar = '';
  String berat = '';
  String tip = '';
  Jenis? jenis = Jenis.unknown;
  bool Nilaiswitch = false;
  final ctrlJemput = TextEditingController();
  final ctrlantar = TextEditingController();
  final ctrlberat = TextEditingController();
  final ctrltip = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    ctrlJemput.dispose();
    super.dispose();
  }

  String getJenis(Jenis? value) {
    if (value == Jenis.pecahBelah) {
      return "Pecah Belah";
    } else if (value == Jenis.Keras) {
      return "Keras";
    }
    return "";
  }

  Widget submit() {
    return Container(
      margin: EdgeInsets.fromLTRB(17, 40, 40, 0),
      width: 315,
      height: 45,
      child: ElevatedButton(
        // tombol order
        style: TextButton.styleFrom(
            backgroundColor: Colors.brown,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
        child: Text(
          "Order",
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontFamily: 'RussoOne'),
        ),
        // style: TextButton.styleFrom(
        //     backgroundColor: Colors.brown,
        //     shape: RoundedRectangleBorder(
        //         borderRadius: BorderRadius.circular(20))),
        onPressed: () {
          setState(() {
            jemput = ctrlJemput.text;
            antar = ctrlantar.text;
            berat = ctrlberat.text;
            tip = ctrltip.text;
          });
          void sweatAlert(BuildContext context) {
            Alert(
              context: context,
              type: AlertType.success,
              title: "Success Order",
              desc: "Selamat anda berhasil Order",
              buttons: [
                DialogButton(
                  color: Colors.brown,
                  child: Text(
                    "Oke",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  onPressed: () => Navigator.pop(context),
                ),
                DialogButton(
                  color: Colors.brown,
                  child: Text(
                    "Tidak",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  onPressed: () => Navigator.pop(context),
                )
              ],
            ).show();
            return;
          }

          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                      title: Text('SUCCESS !'),
                      content: Text(
                          "Jemput : $jemput\nAntar     : $antar\nJenis     : ${getJenis(jenis)}\nBerat     : $berat Kg\nTip         : Rp. $tip"),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            'OKE',
                            style: TextStyle(color: Colors.brown),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            'CANCEL',
                            style: TextStyle(color: Colors.brown),
                          ),
                        )
                      ]));
          sweatAlert(context);
        },
      ),
    );
  }

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
                  // tulisan penjemputan
                  margin: EdgeInsets.fromLTRB(17, 20, 272, 0),
                  child: Column(children: [
                    Text(
                      'Penjemputan',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Acme',
                        fontWeight: FontWeight.w900,
                      ),
                    )
                  ]),
                ),
                Container(
                  // penjemputan
                  margin: EdgeInsets.fromLTRB(17, 0, 40, 0),
                  child: TextFormField(
                    maxLines: 1,
                    controller: ctrlJemput,
                    decoration: InputDecoration(
                      hintText: "Penjemputan",
                      prefixIcon: Icon(Icons.map),
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
                ),
                Container(
                  // tulisan Pengantaran
                  margin: EdgeInsets.fromLTRB(17, 10, 0, 0),
                  alignment: Alignment.topLeft,
                  child: Column(children: [
                    Text(
                      'Pengantaran',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Acme',
                        fontWeight: FontWeight.w900,
                      ),
                    )
                  ]),
                ),
                Container(
                  // pengantaran
                  margin: EdgeInsets.fromLTRB(17, 0, 40, 0),
                  child: TextFormField(
                    maxLines: 1,
                    controller: ctrlantar,
                    decoration: InputDecoration(
                      hintText: "Pengantaran",
                      prefixIcon: Icon(Icons.map),
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
                ),
                Container(
                  // tulisan Jenis Barang
                  margin: EdgeInsets.fromLTRB(17, 10, 0, 0),
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
                  // tulisan dimension
                  margin: EdgeInsets.fromLTRB(17, 10, 0, 0),
                  alignment: Alignment.topLeft,
                  child: Column(children: [
                    Text(
                      'Dimension',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Acme',
                        fontWeight: FontWeight.w900,
                      ),
                    )
                  ]),
                ),
                Container(
                  // dimension
                  margin: EdgeInsets.fromLTRB(17, 0, 40, 0),
                  child: TextFormField(
                    maxLines: 1,
                    controller: ctrlberat,
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
                        subtitle:
                            Text("Jumlah akan ditambahkan ke biaya Order."),
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
                              margin: EdgeInsets.fromLTRB(17, 0, 40, 0),
                              child: TextFormField(
                                maxLines: 1,
                                controller: ctrltip,
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
                                  fillColor: Colors.white.withOpacity(0.3),
                                  filled: true,
                                ),
                              ))
                          : Container()
                    ],
                  ),
                ),
                submit()
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
