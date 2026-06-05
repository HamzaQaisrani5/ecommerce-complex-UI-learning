import 'dart:io';

import 'package:ecommerce_app/core/app_colors/app_colors.dart';
import 'package:ecommerce_app/core/constants.dart';
import 'package:ecommerce_app/screens/auth/forgot_screen.dart';
import 'package:ecommerce_app/screens/auth/login_screen.dart';
import 'package:ecommerce_app/screens/auth/otp_varify.dart';
import 'package:ecommerce_app/screens/bottom_navigation_screen/bottom_navigation_screen.dart';
import 'package:ecommerce_app/screens/cart_screen.dart';
import 'package:ecommerce_app/screens/home_screen.dart';
import 'package:ecommerce_app/screens/product_detail_screen.dart';
import 'package:ecommerce_app/screens/splash_screen.dart';
import 'package:ecommerce_app/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(statusBarColor: AppColors.selectedTabColor),
  );
  final Directory dir = await getApplicationDocumentsDirectory();
  Hive.init(dir.path);
  var box = await Hive.openBox(StorageKeys.cartItems);
  for (var item in box.values) {
  item['quantity'] ??= 1;
}
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
      home: BottomNavigationScreen(),
      // ProductDetailScreen(name: '', picture: 'asset/images/home_images/watch_1.png', dsPrice: '', oldPrice: '',),
    );
  }
}
