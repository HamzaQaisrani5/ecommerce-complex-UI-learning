import 'package:ecommerce_app/controllers/bottom_controller.dart';
import 'package:ecommerce_app/models/bottom_nav_item.dart';
import 'package:ecommerce_app/providers/bottom_provider.dart';
import 'package:ecommerce_app/screens/cart_screen.dart';
import 'package:ecommerce_app/screens/home_screen.dart';
import 'package:ecommerce_app/screens/wallet_screen.dart';
import 'package:ecommerce_app/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BottomNavigationScreen extends ConsumerWidget {
  int currentIndex;
  BottomNavigationScreen({super.key, this.currentIndex = 0});
  List<Widget> _screens = [HomeScreen(), CartScreen(), WalletScreen()];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(bottomProvider);
    return Scaffold(
      body: IndexedStack(index: index, children: _screens),
      bottomNavigationBar: CustomBottomBar(
        onTap: (index){
        ref.read(bottomProvider.notifier).setIndex(index);
        },
        items: [
          BottomNavItem(activeIcon: Icon(Icons.home, color: Colors.white,), inActiveIcon: Icon(Icons.home, color: Colors.black,), label: 'Home'),
          BottomNavItem(activeIcon: Icon(Icons.shopping_cart, color: Colors.white,), inActiveIcon: Icon(Icons.shopping_cart, color: Colors.black,), label: 'Cart'),
          BottomNavItem(activeIcon: Icon(Icons.wallet, color: Colors.white,), inActiveIcon: Icon(Icons.wallet, color: Colors.black,), label: 'Wallet'),
        ],
        currentIndex: index,
      ),
    );
  }
}
