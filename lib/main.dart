import 'package:flutter/material.dart';
import 'package:semi_whatsapp/view/home_screen.dart';
import 'package:semi_whatsapp/view/landing_screen.dart';
import 'package:semi_whatsapp/view/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home:  LandingScreen(),
    );
  }
}

