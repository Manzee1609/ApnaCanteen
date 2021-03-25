import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:user_app/Utils/constants.dart';

submitFeedback(var feedback) {
  print(feedback);
  FirebaseFirestore.instance
      .collection('feedback')
      .add({"feedback": feedback.text, "name": currentUser})
      .then((result) => {})
      .catchError((err) => Dialog(child: Text("error")));
}