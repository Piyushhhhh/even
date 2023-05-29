import 'package:even/data/data.dart';
import 'package:even/shared/bottom_navigation_bar/navigation_bar_cliper/bottom_navigation_item.dart';
import 'package:even/shared/bottom_navigation_bar/navigation_bar_cliper/end_item_bottom_navigation_clipper.dart';
import 'package:even/shared/bottom_navigation_bar/navigation_bar_cliper/inital_item_bottom_navigation_clipper.dart';
import 'package:even/shared/bottom_navigation_bar/navigation_bar_cliper/middle_item_bottom_navigation_clipper.dart';
import 'package:flutter/material.dart';

const double bottomNavHeight = 56;

class AppBottomNavigationBar extends StatefulWidget {
  final Function(int) onChange;
  final int currentIndex;

  const AppBottomNavigationBar(
      {Key? key, required this.currentIndex, required this.onChange})
      : super(key: key);

  @override
  State<AppBottomNavigationBar> createState() => _AppBottomNavigationBarState();
}

class _AppBottomNavigationBarState extends State<AppBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: List.generate(
            4,
            (index) {
              CustomClipper<Path> clipper;

              switch (index) {
                case 0:
                  clipper = InitialItemCustomShape();
                  break;

                case 1:
                case 2:
                  clipper = MiddleItemCustomShape();
                  break;

                case 3:
                  clipper = EndItemCustomShape();
                  break;
                default:
                  clipper = MiddleItemCustomShape();
              }

              Widget selectedChild = AppBottomNavigationItem(
                onTap: () {
                  widget.onChange(index);
                },
                isSelected: widget.currentIndex == index,
                icon: bottomNavigationIcons[index],
                clipper: clipper,
              );
              return Expanded(child: selectedChild);
            },
          ),
        ),
        Container(
          color: Colors.black,
          height: 10,
          width: double.infinity,
          child: LayoutBuilder(builder: (context, constraints) {
            double widthOfEachBlock = constraints.maxWidth / 4;

            return Stack(
              children: [
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 350),
                  curve: Curves.easeIn,
                  left: widget.currentIndex * widthOfEachBlock +
                      widthOfEachBlock / 2,
                  child: Container(
                    height: 4,
                    width: 4,
                    decoration: const BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                  ),
                ),
              ],
            );
          }),
        ),
        Container(
          height: MediaQuery.of(context).padding.bottom - 10,
          color: Colors.black,
        )
      ],
    );
  }
}
