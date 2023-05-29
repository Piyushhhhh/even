import 'package:even/shared/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:even/shared/bottom_navigation_bar/navigation_bar_cliper/unselected_item_bottom_navigation_clipper.dart';
import 'package:flutter/material.dart';

class AppBottomNavigationItem extends StatefulWidget {
  final Function() onTap;
  final bool isSelected;
  final String icon;
  final CustomClipper<Path> clipper;

  const AppBottomNavigationItem({
    Key? key,
    required this.onTap,
    required this.isSelected,
    required this.icon,
    required this.clipper,
  }) : super(key: key);

  @override
  State<AppBottomNavigationItem> createState() =>
      _AppBottomNavigationItemState();
}

class _AppBottomNavigationItemState extends State<AppBottomNavigationItem> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onTap();
      },
      child: ClipPath(
        clipper:
            widget.isSelected ? widget.clipper : UnSelectedItemCustomShape(),
        child: Container(
          height: bottomNavHeight,
          color: widget.isSelected ? Colors.black : Colors.transparent,
          child: Stack(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset(
                    widget.icon,
                    color: widget.isSelected ? Colors.white : Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
