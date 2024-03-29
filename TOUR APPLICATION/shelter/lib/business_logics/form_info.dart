import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shelter/ui/routes/route.dart';

class FormInfo {
  final box = GetStorage();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> sendFormDataToDB(
      String name, int phone, String address, String dob, String gender) async {
    try {
      CollectionReference course =
          FirebaseFirestore.instance.collection("users-form-data");
      course.doc(_auth.currentUser!.email).set({
        'name': name,
        'phone': phone,
        'address': address,
        'dob': dob,
        'gender': gender
      }).whenComplete(() {
        Fluttertoast.showToast(msg: "Added Successfully");
        box.write('introPage', 3);
        Get.toNamed(privacyPolicy);
      });
    } catch (e) {
      Fluttertoast.showToast(msg: 'error $e');
    }
  }
}
