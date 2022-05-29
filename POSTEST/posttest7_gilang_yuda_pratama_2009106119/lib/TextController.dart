import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextController extends GetxController {
  TextEditingController jemputCtrl = TextEditingController();
  TextEditingController antarCtrl = TextEditingController();
  TextEditingController beratCtrl = TextEditingController();
  TextEditingController tipCtrl = TextEditingController();
  TextEditingController komenCtrl = TextEditingController();
  TextEditingController saranCtrl = TextEditingController();

  @override
  void onClose() {
    jemputCtrl.dispose();
    antarCtrl.dispose();
    beratCtrl.dispose();
    tipCtrl.dispose();
    komenCtrl.dispose();
    saranCtrl.dispose();
    print("Hapus");
    super.onClose();
  }
}
