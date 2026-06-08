import 'dart:developer';

import 'package:ecommerce_app/core/app_colors/app_colors.dart';
import 'package:ecommerce_app/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class CartScreen extends StatefulWidget {
  List cartItem;
  CartScreen({super.key, required this.cartItem});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    int totalPrice = 0;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Cart'),
        centerTitle: true,
      ),
      body: widget.cartItem.isEmpty
          ? Center(
              child: Text(
                'Empty Cart',
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          : Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height - 200,
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
                              Image.asset(widget.cartItem[index]['picture']),
                              SizedBox(width: 30),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 20),
                                  Text(
                                    widget.cartItem[index]['ds_price'],
                                    style: TextStyle(color: Colors.black87),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    widget.cartItem[index]['old_price'],
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              // SizedBox(width: 40),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      // mainAxisSize: MainAxisSize.min,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            final hive = Hive.box(
                                              StorageKeys.cartItems,
                                            );
                                            if (widget
                                                    .cartItem[index]['quantity'] ==
                                                1) {
                                              setState(() {
                                                widget.cartItem.removeAt(index);
                                                hive.deleteAt(index);
                                              });
                                            } else {
                                              setState(() {
                                                widget
                                                    .cartItem[index]['quantity']--;
                                              });
                                            }
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
                                          '${widget.cartItem[index]['quantity']}',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                          ),
                                        ),
                                        SizedBox(width: 5),
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              widget
                                                  .cartItem[index]['quantity']++;
                                            });
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
                    itemCount: widget.cartItem.length,
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: AppColors.selectedTabColor,
                    fixedSize: Size(MediaQuery.of(context).size.width - 20, 45),
                    shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(25),
                    ),
                  ),
                  onPressed: () {
                   
                  },
                  child: Text(
                    'Buy Now',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
    );
  }
}

class CartScreenDummy extends StatelessWidget {
  const CartScreenDummy({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
