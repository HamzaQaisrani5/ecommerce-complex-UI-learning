import 'package:ecommerce_app/screens/cart_screen.dart';
import 'package:ecommerce_app/screens/product_detail_screen.dart';
import 'package:ecommerce_app/widgets/home_promotion_card.dart';
import 'package:ecommerce_app/widgets/product_card.dart';
import 'package:flutter/material.dart';

import 'package:ecommerce_app/core/app_colors/app_colors.dart';

class HomeScreen extends StatefulWidget {
  int bottomTabIndex;
  int tabIndex;

  HomeScreen({super.key, this.bottomTabIndex = 0, this.tabIndex = 0});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // final PageController _pageController = PageController();
  List tabIconspath = [
    'asset/icons/watch_icon.png',
    'asset/icons/shoe_icon.png',
    'asset/icons/shirt_logo.png',
    'asset/icons/purse_icon.png',
    'asset/icons/glasses_icon.png',
  ];

  List<String> tabs = ['watch', 'shoe', 'shirt', 'purse', 'goggles'];

  List<Map<String, dynamic>> products = [
    {
      'name': 'Redmi Note 4',
      'ds_price': '\$4500',
      'picture': 'asset/images/home_images/watch_1.png',
      'category': 'watch',
      'old_price': '\$45000',
    },
    {
      'name': 'Apple Watch - series 6',
      'ds_price': '\$5600',
      'picture': 'asset/images/home_images/watch_2.png',
      'category': 'watch',
      'old_price': '\$56000',
    },
    {
      'name': 'Times Dark',
      'ds_price': '\$250',
      'picture': 'asset/images/home_images/watch_3.png',
      'category': 'watch',
      'old_price': '\$600',
    },
    {
      'name': 'Casio 3310',
      'ds_price': '\$56',
      'picture': 'asset/images/home_images/watch_4.png',
      'category': 'watch',
      'old_price': '\$100',
    },
    {
      'name': 'Lycra Men\'s Shirt',
      'ds_price': '\$150',
      'picture': 'asset/images/cart_images/cart_shirt.png',
      'category': 'shirt',
      'old_price': '\$250',
    },
    {
      'name': 'Siberia 800',
      'ds_price': '\$5600',
      'picture': 'asset/images/cart_images/cart_headphone.png',
      'category': 'purse',
      'old_price': '\$6500',
    },
    {
      'name': 'Nike/L v Airforce 1',
      'ds_price': '\$230',
      'picture': 'asset/images/cart_images/cart_shoe.png',
      'category': 'shoe',
      'old_price': '\$310',
    },
  ];

  void setBottomTabIndex(int index) {
    widget.tabIndex = index;
  }

  List<Map<String, dynamic>> filteredProducts() {
    final filter = products
        .where((each) => each['category'] == tabs[widget.tabIndex])
        .toList();
    if (filter.isEmpty) {
      return [];
    }
    return filter;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      persistentFooterDecoration: BoxDecoration(color: Colors.amber),
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
                HomePromotionCard(),
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
                            setBottomTabIndex(tabIndex);
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

                filteredProducts().isEmpty
                    ? Center(
                        child: Text(
                          'No listed items',
                          style: TextStyle(color: Colors.black),
                        ),
                      )
                    : GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        ),
                        itemCount: filteredProducts().length,
                        itemBuilder: (context, index) {
                          final String name = filteredProducts()[index]['name'];
                          final String dsPrice =
                              filteredProducts()[index]['ds_price'];
                          final String picture =
                              filteredProducts()[index]['picture'];
                          final String oldPrice =
                              filteredProducts()[index]['old_price'];
                          return ProductCard(
                            name: name,
                            dsPrice: dsPrice,
                            picture: picture,
                            oldPrice: oldPrice,
                            onTap: (index) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => ProductDetailScreen(
                                    name: name,
                                    picture: picture,
                                    dsPrice: dsPrice,
                                    oldPrice: oldPrice,
                                    // cartScreen: CartScreen(
                                    //   // name: name,
                                    //   // picture: picture,
                                    //   // dsPrice: dsPrice,
                                    //   // oldPrice: oldPrice,
                                    // ),
                                  ),
                                ),
                              );
                            },
                          );
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
