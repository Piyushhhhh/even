import 'package:animations/animations.dart';
import 'package:even/transactions/screens/history_screen.dart';
import 'package:even/value/colors.dart';
import 'package:flutter/material.dart';

import 'shared/bottom_navigation_bar/navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background(),
      bottomNavigationBar: CustomNavigationBar(
        onTap: (int i) {
          index = i;
        },
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
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OpenContainer(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              closedShape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(79.0))),
              closedElevation: 0,
              closedColor: AppColors.background(),
              openColor: AppColors.accent(),
              transitionDuration: const Duration(milliseconds: 600),
              openBuilder: (BuildContext context,
                  void Function({Object? returnValue}) action) {
                return const TransactionHistory();
              },
              closedBuilder: (BuildContext context, void Function() action) {
                return Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.add_circle_outlined,
                      size: 80,
                      color: AppColors.accent(),
                    ),
                    Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.accent().withOpacity(.3),
                        ),
                        height: 90,
                        width: 90),
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
