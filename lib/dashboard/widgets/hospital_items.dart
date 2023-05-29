import 'package:even/value/colors.dart';
import 'package:flutter/material.dart';

class ConciergeItem extends StatelessWidget {
  const ConciergeItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 32,
          width: 32,
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage("assets/face.png"), fit: BoxFit.cover)),
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              text: "Marco",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.text()),
              children: [
                const TextSpan(text: " "),
                TextSpan(
                  text: "Corlone",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.text()),
                )
              ],
            ),
          ),
        ),
        Container(
            height: 32,
            width: 32,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage("assets/whatsapp_logo.png"),
                    fit: BoxFit.cover))),
        const SizedBox(
          width: 16,
        ),
        Container(
          height: 32,
          width: 32,
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage("assets/call_icon.png"),
                  fit: BoxFit.cover)),
        ),
        const SizedBox(
          width: 16,
        ),
      ],
    );
  }
}
