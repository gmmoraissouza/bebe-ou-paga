import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'view/Home/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyAthLegg3-JBIsXkaVgVje9oMfgQt-KF_M",
        appId: "1:975527299882:android:a4103b06a62544a122ac53",
        messagingSenderId: "975527299882",
        projectId: 'bebe-ou-paga-gmms'
    )
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bebe ou Paga',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        scaffoldBackgroundColor: Colors.white.withOpacity(0.9)
      ),
      home: const Home()
    );
  }
}
