import 'package:ecommerce_app/screens/auth/forgot_screen.dart';
import 'package:ecommerce_app/screens/auth/login_screen.dart';
import 'package:ecommerce_app/screens/auth/otp_varify.dart';
import 'package:ecommerce_app/screens/bottom_navigation_screen/bottom_navigation_screen.dart';
import 'package:ecommerce_app/screens/product_detail_screen.dart';
import 'package:ecommerce_app/screens/splash_screen.dart';
import 'package:ecommerce_app/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ECommerce',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Color(0xffef6969)),
      home: ProductDetailScreen(name: '', picture: 'asset/images/home_images/watch_1.png', dsPrice: '', oldPrice: '',),
    );
  }
}
