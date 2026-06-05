import 'package:ecommerce_app/core/app_colors/app_colors.dart';
import 'package:ecommerce_app/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class CartScreen extends StatefulWidget {
  List cartItem;
  int cartItemAmount = 0;

  CartScreen({super.key, required this.cartItem});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Cart'),
        centerTitle: true,
      ),
      body:
          // widget.name.isEmpty
          //     ? Center(
          //         child: Text(
          //           'Empty Cart',
          //           style: TextStyle(
          //             color: Colors.black54,
          //             fontWeight: FontWeight.bold,
          //           ),
          //         ),
          //       )
          //     :
          ListView.builder(
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
                                    final hive = Hive.box(
                                      StorageKeys.cartItems,
                                    );
                                    setState(() {
                                      hive.deleteAt(index);
                                      widget.cartItem.removeAt(index);
                                    });
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
                                  '${widget.cartItemAmount}',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(width: 5),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      widget.cartItemAmount++;
                                    });
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
            itemCount: widget.cartItem.length, //cartitems.length/1,
          ),
    );
  }
}
