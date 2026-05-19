import 'package:ecommerce_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ECommerce',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xffef6969)

      ),
      home: SplashScreen(),
    );
  }
}
