import 'package:ecommerce_app/core/app_colors/app_colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  List tabIconspath = [
    'asset/icons/watch_icon.png',
    'asset/icons/shoe_icon.png',
    'asset/icons/shirt_logo.png',
    'asset/icons/purse_icon.png',
    'asset/icons/glasses_icon.png',
  ];
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.only(left: 10, right: 10, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton.filledTonal(
                    onPressed: () {},
                    style: IconButton.styleFrom(
                      backgroundColor: AppColors.tabsBgColor,
                    ),

                    icon: Icon(Icons.menu_rounded, color: Colors.black54),
                  ),
                  IconButton.filledTonal(
                    onPressed: () {},
                    style: IconButton.styleFrom(
                      backgroundColor: AppColors.tabsBgColor,
                    ),
                    icon: Icon(Icons.search),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    'Hello Hola',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 1),
                  Image.asset('asset/icons/wave_hand_icon.png', width: 20),
                ],
              ),
              // SizedBox(height: 3),
              Text(
                'Let\'s start shopping',
                style: TextStyle(
                  color: Colors.grey.shade400,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 25),
              SizedBox(
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (_, index) {
                    return Container(
                      width: 285,
                      height: 130,
                      margin: EdgeInsets.only(right: 12),
                      decoration: BoxDecoration(
                        color: index.isEven
                            ? AppColors.selectedTabColor
                            : Color(0xff1383f1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '20% off during the \nweekend'.toUpperCase(),
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 8),
                                TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                    backgroundColor: index.isEven
                                        ? Colors.white
                                        : Colors.green,
                                    foregroundColor: index.isEven
                                        ? AppColors.selectedTabColor
                                        : Colors.white,
                                  ),
                                  child: Text(
                                    'Get Now',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 10,
                            right: 0,
                            child: Image.asset(
                              'asset/images/home_images/hand-holding-shopping-bags.png',
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Top Categories',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'See All',
                      style: TextStyle(color: AppColors.selectedTabColor),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 55,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: tabIconspath.length,
                  itemBuilder: (_, index) {
                    return InkWell(
                      splashColor: Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        height: 50,
                        width: 65,
                        decoration: BoxDecoration(
                          color: AppColors.tabsBgColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset(tabIconspath[index]),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
