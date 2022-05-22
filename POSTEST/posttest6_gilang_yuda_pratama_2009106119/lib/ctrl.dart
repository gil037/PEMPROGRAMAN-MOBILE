import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextController extends GetxController {
  var komentar = "".obs;
  final komentarCtrl = TextEditingController();
  var saran = "".obs;
  final saranCtrl = TextEditingController();

  onPressed() {
    komentar = komentarCtrl.text.obs;
    saran = saranCtrl.text.obs;
  }
}
