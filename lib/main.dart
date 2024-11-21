import 'package:airbnb_clone/model/category.dart';
import 'package:airbnb_clone/model/place_model.dart';
import 'package:airbnb_clone/view/login_screen.dart';
import 'package:airbnb_clone/view/main_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return MainScreen();
              } else {
                return const LoginScreen();
              }
            }));
  }
}

class UploadData extends StatelessWidget {
  const UploadData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              // savePlacesToFirebase();
              saveCategoryItems();
            },
            child: Text('upload Data')),
      ),
    );
  }
}
