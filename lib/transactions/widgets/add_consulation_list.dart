import 'package:even/data/data.dart';
import 'package:flutter/material.dart';

List<Widget> buildListItems(
    AnimationController staggeredController, List itemSlideIntervals) {
  final listItems = <Widget>[];
  for (var i = 0; i < menuTitles.length; ++i) {
    listItems.add(
      AnimatedBuilder(
        animation: staggeredController,
        builder: (context, child) {
          final animationPercent = Curves.easeOut.transform(
            itemSlideIntervals[i].transform(staggeredController.value),
          );
          final opacity = animationPercent;
          final slideDistance = (1.0 - animationPercent) * 150;

          return Opacity(
            opacity: opacity,
            child: Transform.translate(
              offset: Offset(slideDistance, 0),
              child: child,
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36.0, vertical: 16),
          child: Text(
            menuTitles[i],
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
  return listItems;
}
