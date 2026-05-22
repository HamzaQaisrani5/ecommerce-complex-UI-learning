import 'package:ecommerce_app/core/app_colors/app_colors.dart';

import 'package:ecommerce_app/models/bottom_nav_item.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatelessWidget {
  ValueChanged<int> onTap;
  List<BottomNavItem> items;
  int currentIndex;
  CustomBottomBar({
    super.key,
    required this.onTap,
    required this.items,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      child: Row(
        children: [
          _buildItem(0, onTap, currentIndex, items),
          _buildItem(1, onTap, currentIndex, items),
          // SizedBox(width: 65),
          _buildItem(2, onTap, currentIndex, items),
          _buildItem(3, onTap, currentIndex, items),
        ],
      ),
    );
    // Container(
    //   height: 70,
    //   width: MediaQuery.of(context).size.width,
    //   decoration: BoxDecoration(
    //     color: AppColors.primaryColor,
    //     borderRadius: BorderRadius.only(
    //       topLeft: Radius.circular(8),
    //       topRight: Radius.circular(8),
    //     ),
    //   ),
    //   child: Row(
    //     children: [
    //       _buildItem(0, onTap, currentIndex, items),
    //       _buildItem(1, onTap, currentIndex, items),
    //       // SizedBox(width: 65),
    //       _buildItem(2, onTap, currentIndex, items),
    //       _buildItem(3, onTap, currentIndex, items),
    //     ],
    //   ),
    // );
  }
}

Widget _buildItem(
  int index,
  ValueChanged<int> onTap,
  int currentIndex,
  List<BottomNavItem> items,
) {
  return Expanded(
    child: InkWell(
      onTap: () => onTap(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          index == currentIndex
              ? items[index].activeIcon
              : items[index].inActiveIcon,
          SizedBox(height: 2),
          Text(
            items[index].label,
            style: TextStyle(
              color: index == currentIndex ? Colors.white : Colors.black,
            ),
          ),
        ],
      ),
    ),
  );
}
