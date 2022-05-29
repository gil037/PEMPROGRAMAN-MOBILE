import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class FirestoreController extends GetxController {
  var users = FirebaseFirestore.instance.collection("users").obs;
  var dukungan = FirebaseFirestore.instance.collection("dukungan").obs;
}
