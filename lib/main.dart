import 'package:flutter/material.dart';
import 'package:uts_faizalazmi_2407810040007/UTS/login.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: LoginPage(),
    );
  }
}
