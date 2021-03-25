import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:user_app/Screens/signup_screen.dart';
import 'Screens/Canteen_Closed_Screen.dart';
import 'Services/open_closed.dart';
import 'Screens/home_screen.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
    if (IsOpen())
      runApp(HomePage());
    else
      runApp(Closed());
  }

