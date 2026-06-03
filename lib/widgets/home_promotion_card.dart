import 'package:ecommerce_app/core/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
class HomePromotionCard extends StatelessWidget {
  const HomePromotionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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