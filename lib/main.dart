import 'package:bebe_ou_paga/utils/theme.dart';
import 'package:flutter/material.dart';

import 'view/Home/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bebe ou Paga',
      theme: theme(),
      home: const Home()
    );
  }
}
