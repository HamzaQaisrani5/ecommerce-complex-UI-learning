import 'dart:developer';

import 'package:audioplayers/audioplayers.dart';
import 'package:ecommerce_app/core/app_colors/app_colors.dart';
import 'package:ecommerce_app/core/constants.dart';
import 'package:ecommerce_app/screens/bottom_navigation_screen/bottom_navigation_screen.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class ProductDetailScreen extends StatefulWidget {
  final String name;
  final String picture;
  final String dsPrice;
  final String oldPrice;
  int reviewStarIndex;
  int quantity;
  // final CartScreen cartScreen;

  ProductDetailScreen({
    super.key,
    required this.name,
    required this.picture,
    required this.dsPrice,
    required this.oldPrice,
    this.reviewStarIndex = -1,
    this.quantity = 1,
    // required this.cartScreen,
  });

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  final _player = AudioPlayer();
  void selectedStar(int index) {
    widget.reviewStarIndex = index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // top: false,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage(widget.picture),
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(200),
                    bottomRight: Radius.circular(200),
                  ),
                  // shape: BoxShape.circle,
                  color: AppColors.tabsBgColor,
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 3,
                      top: 30,
                      child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (_) => BottomNavigationScreen(),
                            ),
                          );
                        },
                        icon: Icon(Icons.arrow_back),
                        focusColor: Colors.transparent,
                      ),
                    ),
                    Align(
                      alignment: AlignmentGeometry.bottomCenter,
                      child: Container(
                        height: 20,
                        width: 10,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.selectedTabColor.withAlpha(200),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 7),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 9),
                    Text(
                      widget.name,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey.shade500,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 12),
                    Row(
                      children: List.generate(5, (index) {
                        return IconButton(
                          iconSize: 30,
                          highlightColor: Colors.transparent,
                          onPressed: () {
                            setState(() {
                              selectedStar(index);
                            });
                          },
                          icon: index <= widget.reviewStarIndex
                              ? Icon(Icons.star, color: Colors.yellow.shade800)
                              : Icon(
                                  Icons.star_border_outlined,
                                  color: Colors.yellow.shade800,
                                ),
                        );
                      }),
                    ),

                    SizedBox(height: 9),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          widget.dsPrice,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(width: 12),
                        Text(
                          widget.oldPrice,
                          style: TextStyle(color: Colors.grey.shade500),
                        ),
                        SizedBox(width: 148),
                        Text(
                          'Available in Stock',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Text(
                      'About',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since 1966, when designers at Letraset and James Mosley, the librarian at St Bride Printing Library, took a 1914 Cicero translation',
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: AppColors.selectedTabColor,
                        fixedSize: Size(
                          MediaQuery.of(context).size.width - 20,
                          45,
                        ),
                        shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(25),
                        ),
                      ),
                      onPressed: () async {
                        final item = {
                          'name': widget.name,
                          'picture': widget.picture,
                          'ds_price': widget.dsPrice,
                          'old_price': widget.oldPrice,
                          'quantity': widget.quantity,
                        };
                        final hiveValues = Hive.box(
                          StorageKeys.cartItems,
                        ).values.toList();

                        final hive = Hive.box(StorageKeys.cartItems);
                        
                        final isExist = hiveValues.where((index) {
                          if (index['name'] != item['name']) {
                            hive.add(item);
                          }
                          return index['name'] != item['name'];
                        });
                        
                        log('isExist: $isExist');

                        log('Data Before added: ${hive.values}');
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Added to cart'),
                            behavior: SnackBarBehavior.floating,
                            duration: Duration(seconds: 3),
                          ),
                        );
                        //   await _player.play(
                        //     AssetSource('notifi_ring/messages.mp3'),
                        //   );
                      },
                      child: Text(
                        'Add to Cart',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
