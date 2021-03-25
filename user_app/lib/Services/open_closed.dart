import 'package:cloud_firestore/cloud_firestore.dart';


bool IsOpen() {
  bool isOpen = true;

  FirebaseFirestore.instance
      .collection("startstop")
      .document("nsbLA2tTBDx1N02rwxn6")
      .get()
      .then((value) {
    isOpen = value.data()['value'];
  });

  return isOpen;
}