import 'package:even/utils/helper.dart';
import 'package:even/value/colors.dart';
import 'package:even/value/strings.dart';
import 'package:flutter/material.dart';

Widget transactionItem(BuildContext context) {
  return Container(
    margin: const EdgeInsets.symmetric(
      vertical: 10,
    ),
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(17),
      color: AppColors.containerBackground(),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                          color: AppColors.accent(),
                          height: 10,
                          width: textSize(
                                  Strings.cosultation,
                                  TextStyle(
                                      fontSize: 18,
                                      color: AppColors.text(),
                                      fontWeight: FontWeight.w600))
                              .width),
                      Text(
                        Strings.cosultation,
                        style: TextStyle(
                            fontSize: 18,
                            color: AppColors.text(),
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.houseboat_outlined,
                    color: AppColors.primary(),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Dr. Jordon Ramsey',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 22,
                    color: AppColors.text()),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Aster Rv- Multi speclity hospital, Bengaluru',
                style: TextStyle(fontSize: 14, color: AppColors.text()),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  Icon(
                    Icons.photo,
                    size: 35,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.photo,
                    size: 35,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width / 2.4,
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: AppColors.primary(),
                ),
                child: Center(
                  child: Text(
                    'UPLOAD DOCS',
                    style: TextStyle(
                        color: AppColors.containerBackground(), fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 15),
          decoration: BoxDecoration(
            color: AppColors.fadeText().withOpacity(0.2),
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(17),
                bottomRight: Radius.circular(17)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Feedback',
                    style: TextStyle(
                        color: AppColors.text(),
                        fontWeight: FontWeight.w600,
                        fontSize: 15),
                  ),
                  Text(
                    'Edit',
                    style: TextStyle(
                        color: AppColors.primary(),
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ],
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                'Every interaction with hospital was great!',
                style: TextStyle(color: AppColors.fadeText()),
              )
            ],
          ),
        ),
      ],
    ),
  );
}
