import 'package:ecommerce_app/core/app_colors/app_colors.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String name;
  final String dsPrice;
  final void Function(int? index) onTap;
  // final String category;
  final String picture;
  final String oldPrice;
  const ProductCard({
    super.key,
    required this.name,
    required this.dsPrice,
    // required this.category,
    required this.picture,
    required this.oldPrice,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap(null);
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.tabsBgColor,
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.all(5),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Stack(
            children: [
              Positioned(
                top: 10,
                child: Text(
                  '50% OFF',
                  style: TextStyle(color: Colors.grey, fontSize: 10),
                ),
              ),

              Positioned(
                right: 3,
                top: 10,
                child: Icon(Icons.check, color: Colors.black54),
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(picture, width: 110, height: 110),
                  Align(
                    alignment: AlignmentGeometry.topLeft,
                    child: Text(
                      name,
                      style: TextStyle(color: Colors.grey.shade600),
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        dsPrice,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 30),
                      Text(
                        oldPrice,
                        style: TextStyle(color: Colors.grey.shade600),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
