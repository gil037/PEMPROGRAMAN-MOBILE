import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pertemuan_6/checkBox.dart';
import 'package:pertemuan_6/text_ctrl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Home({super.key});

  final TextController textCtrl = Get.put(TextController());
  final checkBoxController cbCtrl = Get.put(checkBoxController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pertemuan 6",
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                child: TextField(
                  controller: textCtrl.namaDepanCtrl,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Text Depan",
                  ),
                ),
              ),
              ListTile(
                title: Text("Lapar ?"),
                leading: Obx(
                  () => Checkbox(
                    value: cbCtrl.isLapar.value,
                    onChanged: (Value) {
                      cbCtrl.isLapar(Value);
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: textCtrl.onPressed, child: Text("Submit")),
              SizedBox(
                height: 30,
              ),
              OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Page2()));
                  },
                  child: Text("Halaman2"))
            ],
          ),
        ],
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  Page2({super.key});

  final TextController textCtrl = Get.find();
  final checkBoxController cbCtrl = Get.put(checkBoxController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Halaman 2",
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Text(
                "Nama Saya : ${textCtrl.namaDepan.value}",
                style: TextStyle(fontSize: 16),
              ),
              Text(
                "Dan Saya ${cbCtrl.isLapar.value ? 'lapar' : 'tidak lapar'}",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
