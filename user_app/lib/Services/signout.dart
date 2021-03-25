import 'package:firebase_auth/firebase_auth.dart';
import 'package:user_app/Utils/constants.dart';
import 'package:user_app/Screens/signin_screen.dart';
import 'package:flutter/material.dart';

signOut(context){
  final FirebaseAuth _auth = FirebaseAuth.instance;

  currentUser = " ";
  items = new List();
  quantity = new List<int>();
  prices = new List<double>();
  uid = 'Ovj2ey5RS3sc1YaAmyJQ';
  total = calculateTotal();

  _auth.signOut().then(
        (res) => Navigator.push(context,
        MaterialPageRoute(builder: (context) => SignInPage())),
  );
}