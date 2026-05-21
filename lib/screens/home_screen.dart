import 'package:ecommerce_app/core/app_colors/app_colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final List<String> tabs = ['All', 'Category', 'Top', 'Recommended'];

  final List imagesList = [
    'asset/images/image_1.png',
    'asset/images/image_2.jpg',
    'asset/images/image_3.jpeg',
    'asset/images/image_4.jpeg',
    'asset/images/image_5.jpg',
    'asset/images/image_6.jpg',
  ];

  final List productTitle = [
    'Warm Shirt',
    'Hiking Shoe',
    'Purse',
    'Casual Shoe',
    'Wall Paper',
    'Loya',
  ];

  final List price = ['\$300', '\$150', '\$100', '\$60', '\$87', '\$15'];

  final List reviews = ['526', '123', '74', '41', '612', '20'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.black12.withOpacity(0.05),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12.withOpacity(0.05),
                            spreadRadius: 0,
                            // offset: Offset(0.5, 0.5),
                            blurRadius: 2,
                          ),
                        ],
                      ),
                      width: MediaQuery.of(context).size.width / 2,
                      child: TextField(
                        cursorColor: AppColors.primaryColor,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          hintText: 'Find your Product',
                          hintStyle: TextStyle(
                            color: Colors.black54,
                            fontSize: 12,
                          ),
                          floatingLabelStyle: TextStyle(
                            color: AppColors.primaryColor,
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            color: AppColors.primaryColor,
                          ),

                          focusColor: AppColors.primaryColor,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.black12.withOpacity(0.05),
                        // color: Colors.redAccent,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12.withOpacity(0.05),
                            spreadRadius: 0,
                            // offset: Offset(0.5, 0.5),
                            blurRadius: 2,
                          ),
                        ],
                      ),
                      width: MediaQuery.of(context).size.width / 6,
                      height: 50,
                      child: Icon(Icons.notifications_none),
                    ),
                  ],
                ),
                // SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    color: Color(0xfffcfcf7),
                    child: Image.asset('asset/icons/logo_3.jpeg'),
                  ),
                ),
                SizedBox(height: 30),
                SizedBox(
                  height: 30,
                  child: ListView.separated(
                    itemCount: tabs.length,
                    scrollDirection: Axis.horizontal,

                    shrinkWrap: true,
                    itemBuilder: (_, index) {
                      return Container(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        decoration: BoxDecoration(
                          color: Colors.black12.withOpacity(0.07),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Center(
                          child: Text(
                            tabs[index],
                            style: TextStyle(
                              color: Colors.black38,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (_, index) {
                      return SizedBox(width: 10);
                    },
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 320,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: imagesList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      return Container(
                        width: 180,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 180,
                              height: 250,
                              child: Stack(
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image.asset(
                                        imagesList[index],
                                        width: 180,
                                        height: 250,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),

                                  Positioned(
                                    top: 10,
                                    right: 10,
                                    child: Icon(
                                      Icons.favorite_outlined,
                                      color: AppColors.primaryColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(height: 10),

                            Text(
                              productTitle[index],
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Row(
                              children: [
                                Icon(Icons.star, color: Colors.amber, size: 18),
                                SizedBox(width: 2),
                                Text(reviews[index]),
                                SizedBox(width: 5),
                                Text(
                                  price[index],
                                  style: TextStyle(
                                    color: AppColors.darkPrimaryColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
