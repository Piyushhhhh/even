import 'package:even/value/colors.dart';
import 'package:flutter/material.dart';

class HostpitalListItem extends StatelessWidget {
  final String hospitalName;

  const HostpitalListItem({Key? key, required this.hospitalName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Stack(
        children: [
          Image.asset(
            "assets/hospital_photo.png",
            fit: BoxFit.cover,
          ),
          Positioned(
              top: 16,
              left: 16,
              child: Image.asset(
                "assets/aster_logo.png",
                height: 24,
                width: 64,
              )),
          Positioned(
            bottom: 32,
            left: 16,
            right: 16,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  hospitalName,
                  style: TextStyle(
                      color: AppColors.background(),
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Hebbal, Banglore",
                      style: TextStyle(color: Colors.white),
                    ),
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: const Color(0xffFBE277),
                          borderRadius: BorderRadius.circular(4)),
                      child: const Text("1.9 km"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
