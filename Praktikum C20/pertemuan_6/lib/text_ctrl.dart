import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextController extends GetxController {
  var namaDepan = "".obs;
  final namaDepanCtrl = TextEditingController();

  onPressed() {
    namaDepan = namaDepanCtrl.text.obs;
  }
}

class checkBoxController extends GetxController {
  var isLapar = false.obs;
}
