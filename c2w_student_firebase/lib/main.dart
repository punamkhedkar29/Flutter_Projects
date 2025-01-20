import 'package:c2w_student_firebase/add_data.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyCqNUtS-heVH-8cLt3JiFPkXyhanGGQjnw", 
      appId: "1:401681774682:android:ad715fe3fce78b8f2dc063", 
      messagingSenderId: "401681774682", 
      projectId: "c2wstudinfo-52815")
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AddStudData()
    );
  }
}
