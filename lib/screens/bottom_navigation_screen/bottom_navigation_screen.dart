import 'package:ecommerce_app/models/bottom_nav_item.dart';
import 'package:ecommerce_app/screens/cart_screen.dart';
import 'package:ecommerce_app/screens/home_screen.dart';
import 'package:ecommerce_app/screens/wallet_screen.dart';
import 'package:ecommerce_app/service/btm_service/btm_service.dart';
import 'package:ecommerce_app/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class BottomNavigationScreen extends StatefulWidget {
  final BtmService btmService;
  int currentIndex;
  BottomNavigationScreen(this.btmService, {super.key, this.currentIndex = 0});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  List<Widget> _screens = [HomeScreen(), CartScreen(), WalletScreen()];

  @override
  Widget build(BuildContext context) {
    widget.currentIndex = widget.btmService.index;
    return Scaffold(
      body: IndexedStack(index: widget.currentIndex, children: _screens),
      bottomNavigationBar: CustomBottomBar(
        onTap: (index) {
          setState(() {
            widget.btmService.setIndex(index);
          });
        },
        items: [
          BottomNavItem(
            activeIcon: Icon(Icons.home, color: Colors.white),
            inActiveIcon: Icon(Icons.home, color: Colors.black),
            label: 'Home',
          ),
          BottomNavItem(
            activeIcon: Icon(Icons.shopping_cart, color: Colors.white),
            inActiveIcon: Icon(Icons.shopping_cart, color: Colors.black),
            label: 'Cart',
          ),
          BottomNavItem(
            activeIcon: Icon(Icons.wallet, color: Colors.white),
            inActiveIcon: Icon(Icons.wallet, color: Colors.black),
            label: 'Wallet',
          ),
        ],
        currentIndex: widget.currentIndex,
      ),
    );
  }
}
