import 'package:ecommerce_app/core/app_colors/app_colors.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  final String name;
  final String picture;
  final String dsPrice;
  final String oldPrice;
  const CartScreen({super.key, required this.name, required this.picture, required this.dsPrice, required this.oldPrice, });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Cart'),
        centerTitle: true,
      ),
      body:
           name.isEmpty?Center(
            child: Text('Empty Cart', style: TextStyle(
              color: Colors.black54, fontWeight: FontWeight.bold
            ),),
          ) :
          SizedBox(
            height: 100,
            child: ListView.builder(
              itemBuilder: (_, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: AppColors.tabsBgColor,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('asset/images/cart_images/cart_watch.png'),
                        SizedBox(width: 30),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20),
                            Text(
                              'Apple W series',
                              style: TextStyle(color: Colors.black87),
                            ),
                            SizedBox(height: 5),
                            Text(
                              '\$2300',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        // SizedBox(width: 40),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 23),
                            Text(
                              'Size: 35',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 11,
                              ),
                            ),
                            SizedBox(height: 5),
                            Container(
                              height: 40,
                              width: 80,
                              margin: EdgeInsets.only(left: 8, right: 8),
                              decoration: BoxDecoration(
                                // shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white,
                                border: Border(
                                  top: BorderSide(
                                    width: 1,
                                    color: AppColors.selectedTabColor,
                                  ),
                                  bottom: BorderSide(
                                    width: 1,
                                    color: AppColors.selectedTabColor,
                                  ),
                                  left: BorderSide(
                                    width: 1,
                                    color: AppColors.selectedTabColor,
                                  ),
                                  right: BorderSide(
                                    width: 1,
                                    color: AppColors.selectedTabColor,
                                  ),
                                ),
                              ),
                              child: Row(
                                // mainAxisAlignment: .center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                // mainAxisSize: MainAxisSize.min,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      // int item = 0;
                                    },
                                    focusColor: Colors.transparent,
                                    splashColor: Colors.transparent,
                                    child: Icon(
                                      Icons.remove,
                                      color: AppColors.selectedTabColor,
                                      size: 20,
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    '0',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  InkWell(
                                    onTap: () {
                                      // int item = 0;
                                    },
                                    focusColor: Colors.transparent,
                                    child: Icon(
                                      Icons.add,
                                      color: AppColors.selectedTabColor,
                                      size: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
              itemCount: 1,
            ),
          ),
    );
  }
}
