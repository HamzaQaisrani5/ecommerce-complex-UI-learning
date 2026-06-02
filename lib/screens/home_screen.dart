import 'package:ecommerce_app/core/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class HomeScreen extends StatefulWidget {
  int tabIndex;

  HomeScreen({super.key, this.tabIndex = 0});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List tabIconspath = [
    'asset/icons/watch_icon.png',
    'asset/icons/shoe_icon.png',
    'asset/icons/shirt_logo.png',
    'asset/icons/purse_icon.png',
    'asset/icons/glasses_icon.png',
  ];

  final List<String> watchpicsPath = [
    'asset/images/home_images/watch_1.png',
    'asset/images/home_images/watch_2.png',
    'asset/images/home_images/watch_3.png',
    'asset/images/home_images/watch_4.png',
  ];
  final List<String> watchNames = [
    'Redmi Note 4',
    'Apple Watch - series 6',
    'Times Dark',
    'Casio 3310',
  ];

  final List<String> watchDiscountPrice = ['\$4500', '\$5600', '\$56', '\$100'];
  final List<String> watchOldPrice = ['\$45000', '\$56000', '\$250', '\$600'];

  void setTabIndex(int index) {
    widget.tabIndex = index;
  }

  @override
  Widget build(BuildContext context) {
    // Widget body;
    // if (widget.tabIndex) {

    // }
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.only(left: 10, right: 10, top: 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
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
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
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
                                    '20% off during the \nweekend'
                                        .toUpperCase(),
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
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
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
                    itemBuilder: (_, tabIndex) {
                      return InkWell(
                        splashColor: Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                        onTap: () {
                          setState(() {
                            setTabIndex(tabIndex);
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          height: 50,
                          width: 65,
                          decoration: BoxDecoration(
                            color: tabIndex == widget.tabIndex
                                ? AppColors.selectedTabColor
                                : AppColors.tabsBgColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(tabIconspath[tabIndex]),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 12),

                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: watchpicsPath.length,
                  itemBuilder: (context, index) {
                    
                    Widget body;
                    body = Container(
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
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 10,
                                ),
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
                                Image.asset(
                                  watchpicsPath[index],
                                  width: 110,
                                  height: 110,
                                ),
                                Align(
                                  alignment: AlignmentGeometry.topLeft,
                                  child: Text(
                                    watchNames[index],
                                    style: TextStyle(
                                      color: Colors.grey.shade600,
                                    ),
                                  ),
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      watchDiscountPrice[index],
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(width: 30),
                                    Text(
                                      watchOldPrice[index],
                                      style: TextStyle(
                                        color: Colors.grey.shade600,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                    return body;
                    // }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
