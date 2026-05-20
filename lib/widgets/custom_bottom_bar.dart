import 'package:ecommerce_app/core/app_colors/app_colors.dart';
import 'package:flutter/foundation.dart';

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
    return Container(
      width: MediaQuery.of(context).size.width,
      color: AppColors.primaryColor,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
        ),
      ),
      child: Expanded(
        child: Row(
          children: List.generate(items.length, (index) {
            return InkWell(onTap: () => onTap(index), child: Column(
              children: [index==currentIndex?items[index].activeIcon:items[index].inActiveIcon, SizedBox(height: 2,), Text(items[index].label)],
            ));
          }),
        ),
      ),
    );
  }
}
