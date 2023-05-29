import 'package:even/utils/helper.dart';
import 'package:even/value/colors.dart';
import 'package:even/value/strings.dart';
import 'package:flutter/material.dart';

Widget transactionItem(BuildContext context, int i) {
  return Row(
    children: [
      const SizedBox(
        width: 5,
      ),
      Stack(
        alignment: Alignment.center,
        children: [
          Container(
            color: AppColors.accent().withOpacity(0.8 - (i / 10)),
            width: 2,
            height: MediaQuery.of(context).size.height / 2.57,
            constraints: const BoxConstraints(
              maxHeight: double.infinity,
            ),
          ),
          Column(
            children: [
              Text(
                '5:35 pm',
                style: TextStyle(
                    fontSize: 14, color: AppColors.fadeText().withOpacity(0.6)),
              ),
              Text(
                'Today',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.fadeText().withOpacity(0.8)),
              )
            ],
          ),
        ],
      ),
      const SizedBox(
        width: 10,
      ),
      Expanded(
        child: Container(
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
                                color: AppColors.accent().withOpacity(0.6),
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
                        Image.asset(
                          "assets/aster_logo.png",
                          height: 24,
                          width: 64,
                        ),
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
                      children: [
                        Container(
                          height: 48,
                          width: 48,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            image: const DecorationImage(
                                image: AssetImage("assets/prescription.jpeg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 48,
                          width: 48,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            image: const DecorationImage(
                                image: AssetImage("assets/prescription.jpeg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2.4,
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        color: AppColors.primary(),
                      ),
                      child: Center(
                        child: Text(
                          'UPLOAD DOCS',
                          style: TextStyle(
                              color: AppColors.containerBackground(),
                              fontSize: 16),
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
        ),
      ),
    ],
  );
}
