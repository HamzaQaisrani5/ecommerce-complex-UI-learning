import 'dart:async';

import 'package:ecommerce_app/core/app_colors/app_colors.dart';
import 'package:flutter/material.dart';

class HomePromotionCard extends StatefulWidget {
  int currentIndex;
  HomePromotionCard({super.key, this.currentIndex = 0});

  @override
  State<HomePromotionCard> createState() => _HomePromotionCardState();
}

class _HomePromotionCardState extends State<HomePromotionCard> {
  final PageController pageController = PageController();
  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 1), (Timer timer) {
      widget.currentIndex++;
      if (widget.currentIndex > 2) {
        widget.currentIndex = 0;
      }
      pageController.animateToPage(
        widget.currentIndex,
        duration: Duration(seconds: 1),
        curve: Curves.easeInOutQuad,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: PageView.builder(
        controller: pageController,
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (_, index) {
          return Container(
            width: 285,
            height: 130,
            margin: EdgeInsets.only(right: 12),
            decoration: BoxDecoration(
              color: index == 0
                  ? AppColors.selectedTabColor
                  : index == 1
                  ? Color(0xff1383f1)
                  : Colors.orange,
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
                              : index == 2
                              ? Colors.orange
                              : Colors.white,
                        ),
                        child: Text('Get Now', style: TextStyle(fontSize: 12)),
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
    );
  }
}
