import 'package:animations/animations.dart';
import 'package:even/transactions/screens/add_consultant.dart';
import 'package:even/value/colors.dart';
import 'package:flutter/material.dart';

Widget addCosultantButton() {
  return Column(
    children: [
      OpenContainer(
        middleColor: AppColors.accent(),
        transitionType: ContainerTransitionType.fadeThrough,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        closedShape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
          Radius.circular(79.0),
        )),
        closedElevation: 0,
        closedColor: AppColors.background(),
        openColor: AppColors.accent(),
        transitionDuration: const Duration(milliseconds: 900),
        openBuilder: (BuildContext context,
            void Function({Object? returnValue}) action) {
          return const AddConsultant();
        },
        closedBuilder: (BuildContext context, void Function() action) {
          return Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Icon(
                Icons.add_circle_outlined,
                size: 60,
                color: AppColors.accent(),
              ),
              Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.accent().withOpacity(.3),
                  ),
                  height: 70,
                  width: 70),
            ],
          );
        },
      ),
    ],
  );
}
