import 'dart:developer';
import 'package:ecommerce_app/core/constants.dart';
import 'package:ecommerce_app/models/bottom_nav_item.dart';
import 'package:ecommerce_app/screens/profile_screen.dart';
import 'package:ecommerce_app/screens/cart_screen.dart';
import 'package:ecommerce_app/screens/home_screen.dart';
import 'package:ecommerce_app/screens/product_screen.dart';
import 'package:ecommerce_app/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

// ignore: must_be_immutable
class BottomNavigationScreen extends StatefulWidget {
  int currentIndex;
  BottomNavigationScreen({super.key, this.currentIndex = 0});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  List cartItems = [];

  void setIndex(int newIndex) {
    if (newIndex == 1) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => CartScreen(cartItem: cartItems),
              ),
            );
          }
          else{
    widget.currentIndex = newIndex;
          }

    final hive = Hive.box(StorageKeys.cartItems);
    cartItems = hive.values.toList();
    log('cartList: $cartItems');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: widget.currentIndex,
        children: [
          HomeScreen(),
          CartScreenDummy(),
          // FavouriteScreen(),
          // ProfileScreen(),
        ],
      ),
      bottomNavigationBar: CustomBottomBar(
        onTap: (index) {
          setState(() {
            setIndex(index);
          });
        },
        items: [
          BottomNavItem(
            activeIcon: Icon(Icons.home, color: Colors.white, size: 32),
            inActiveIcon: Icon(Icons.home, color: Colors.black, size: 30),
            label: 'Home',
          ),
          BottomNavItem(
            activeIcon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
              size: 32,
            ),
            inActiveIcon: Icon(
              Icons.shopping_cart,
              color: Colors.black,
              size: 30,
            ),
            label: 'Cart',
          ),
          // BottomNavItem(
          //   activeIcon: Icon(
          //     Icons.favorite_outlined,
          //     color: Colors.white,
          //     size: 32,
          //   ),
          //   inActiveIcon: Icon(
          //     Icons.favorite_outlined,
          //     color: Colors.black,
          //     size: 30,
          //   ),
          //   label: 'Favourite',
          // ),
          // BottomNavItem(
          //   activeIcon: Icon(Icons.person, color: Colors.white, size: 32),
          //   inActiveIcon: Icon(Icons.person, color: Colors.black, size: 30),
          //   label: 'Profile',
          // ),
        ],
        currentIndex: widget.currentIndex,
      ),
    );
  }
}
