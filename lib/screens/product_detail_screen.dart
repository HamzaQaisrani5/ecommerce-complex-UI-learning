import 'package:ecommerce_app/core/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class ProductDetailScreen extends StatefulWidget {
  final String name;
  final String picture;
  final String dsPrice;
  final String oldPrice;

  const ProductDetailScreen({
    super.key,
    required this.name,
    required this.picture,
    required this.dsPrice,
    required this.oldPrice,
  });

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // margin: EdgeInsets.only(bottom: 20),
              padding: EdgeInsets.only(bottom: 20),
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage('asset/images/home_images/watch_1.png'),
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(200),
                  bottomRight: Radius.circular(200),
                ),
                // shape: BoxShape.circle,
                color: AppColors.tabsBgColor,
              ),
              child: Align(
                alignment: AlignmentGeometry.bottomCenter,
                child: Container(
                  height: 20,
                  width: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.selectedTabColor,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Text(
                    'Apple Watch Series 6',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey.shade500,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 60,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (_, index) {
                        return IconButton(
                          hoverColor: Colors.transparent,
                          onPressed: () {},
                          icon: Icon(Icons.star_border_outlined),
                        );
                        // InkWell(
                        //   onTap: () {},
                        //   child: Expanded(
                        //     child: Icon(Icons.star_border_outlined),
                        //   ),
                        // );
                      },
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '\$5000',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(width: 12),
                      Text(
                        '\$6400',
                        style: TextStyle(color: Colors.grey.shade500),
                      ),
                      SizedBox(width: 150),
                      Text('Available Stock'),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    'About',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since 1966, when designers at Letraset and James Mosley, the librarian at St Bride Printing Library, took a 1914 Cicero translation',
                  ),
                  ElevatedButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: AppColors.selectedTabColor,
                      fixedSize: Size(500, 45),
                    ),
                    onPressed: () {},
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

        // Positioned(
        //   top: 0,
        //   right: 0,
        //   left: 0,
        //   child:
        // Container(
        //   // margin: EdgeInsets.only(bottom: 20),
        //   padding: EdgeInsets.only(bottom: 20),
        //   height: MediaQuery.of(context).size.height / 2,
        //   width: MediaQuery.of(context).size.width,
        //   decoration: BoxDecoration(
        //     image: DecorationImage(
        //       fit: BoxFit.contain,
        //       image: AssetImage('asset/images/home_images/watch_1.png'),
        //     ),
        //     borderRadius: BorderRadius.only(
        //       bottomLeft: Radius.circular(200),
        //       bottomRight: Radius.circular(200),
        //     ),
        //     // shape: BoxShape.circle,
        //     color: AppColors.tabsBgColor,
        //   ),
        //   child: Align(
        //     alignment: AlignmentGeometry.bottomCenter,
        //     child: Container(
        //       height: 20,
        //       width: 10,
        //       decoration: BoxDecoration(
        //         shape: BoxShape.circle,
        //         color: AppColors.selectedTabColor,
        //       ),
        //     ),
        //   ),

        //  Column(
        //   // mainAxisAlignment: MainAxisAlignment.start,
        //   children: [
        //     Image.asset(
        //       'asset/images/home_images/watch_1.png',
        //       height: 250 * 1.5,
        //       width: 250 * 1.5,
        //     ),
        //     SizedBox(height: 10),
        //     Container(
        //       height: 20,
        //       width: 10,

        //       decoration: BoxDecoration(
        //         shape: BoxShape.circle,
        //         color: AppColors.selectedTabColor,
        //       ),
        //     ),
        //   ],
        // ),
        // ),
        // ),
      ),
    );
  }
}
