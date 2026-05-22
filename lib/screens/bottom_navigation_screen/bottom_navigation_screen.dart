import 'package:ecommerce_app/core/app_colors/app_colors.dart';
import 'package:ecommerce_app/models/bottom_nav_item.dart';
import 'package:ecommerce_app/screens/profile_screen.dart';
import 'package:ecommerce_app/screens/cart_screen.dart';
import 'package:ecommerce_app/screens/home_screen.dart';
import 'package:ecommerce_app/screens/product_screen.dart';
import 'package:ecommerce_app/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class BottomNavigationScreen extends StatefulWidget {
  // final BtmService btmService;
  int currentIndex;
  BottomNavigationScreen({super.key, this.currentIndex = 0});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  void setIndex(int newIndex) {
    widget.currentIndex = newIndex;
  }

  final List<Widget> _screens = [
    HomeScreen(),
    CartScreen(),
    FavouriteScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    // widget.currentIndex = widget.btmService.index;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.darkPrimaryColor,
        shape: CircleBorder(),
        child: Icon(Icons.qr_code, color: Colors.white),
        onPressed: () {},
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      body: IndexedStack(index: widget.currentIndex, children: _screens),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: CustomBottomBar(
          onTap: (index) {
            setState(() {
              setIndex(index);
            });
          },
          items: [
            BottomNavItem(
              activeIcon: Icon(Icons.home, color: Colors.white, size: 35),
              inActiveIcon: Icon(Icons.home, color: Colors.black, size: 30),
              label: 'Home',
            ),
            BottomNavItem(
              activeIcon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
                size: 35,
              ),
              inActiveIcon: Icon(
                Icons.shopping_cart,
                color: Colors.black,
                size: 30,
              ),
              label: 'Cart',
            ),
            BottomNavItem(
              activeIcon: Icon(
                Icons.favorite_outlined,
                color: Colors.white,
                size: 35,
              ),
              inActiveIcon: Icon(
                Icons.favorite_outlined,
                color: Colors.black,
                size: 30,
              ),
              label: 'Favourite',
            ),
            BottomNavItem(
              activeIcon: Icon(Icons.person, color: Colors.white, size: 35),
              inActiveIcon: Icon(Icons.person, color: Colors.black, size: 30),
              label: 'Profile',
            ),
          ],
          currentIndex: widget.currentIndex,
        ),
      ),

      // CustomBottomBar(
      //   onTap: (index) {
      //     setState(() {
      //       setIndex(index);
      //     });
      //   },
      //   items: [
      //     BottomNavItem(
      //       activeIcon: Icon(Icons.home, color: Colors.white, size: 35),
      //       inActiveIcon: Icon(Icons.home, color: Colors.black, size: 30),
      //       label: 'Home',
      //     ),
      //     BottomNavItem(
      //       activeIcon: Icon(
      //         Icons.shopping_cart,
      //         color: Colors.white,
      //         size: 35,
      //       ),
      //       inActiveIcon: Icon(
      //         Icons.shopping_cart,
      //         color: Colors.black,
      //         size: 30,
      //       ),
      //       label: 'Cart',
      //     ),
      //     BottomNavItem(
      //       activeIcon: Icon(
      //         Icons.favorite_outlined,
      //         color: Colors.white,
      //         size: 35,
      //       ),
      //       inActiveIcon: Icon(
      //         Icons.favorite_outlined,
      //         color: Colors.black,
      //         size: 30,
      //       ),
      //       label: 'Favourite',
      //     ),
      //     BottomNavItem(
      //       activeIcon: Icon(Icons.person, color: Colors.white, size: 35),
      //       inActiveIcon: Icon(Icons.person, color: Colors.black, size: 30),
      //       label: 'Profile',
      //     ),
      //   ],
      //   currentIndex: widget.currentIndex,
      // ),
    );
  }
}
