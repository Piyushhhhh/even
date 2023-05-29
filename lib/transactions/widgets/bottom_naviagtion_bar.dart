import 'package:even/shared/bottom_navigation_bar/navigation_bar.dart';
import 'package:even/value/colors.dart';
import 'package:flutter/material.dart';

Widget customBottomNavigationBar() {
  return CustomNavigationBar(
    onTap: (int i) {},
    color: AppColors.text(),
    backgroundColor: AppColors.background(),
    items: [
      Icon(
        Icons.add,
        size: 30,
        color: AppColors.accent(),
      ),
      Icon(
        Icons.compare_arrows,
        size: 30,
        color: AppColors.accent(),
      ),
      Icon(
        Icons.call_split,
        size: 30,
        color: AppColors.accent(),
      ),
      Icon(
        Icons.perm_identity,
        size: 30,
        color: AppColors.accent(),
      ),
    ],
  );
}
