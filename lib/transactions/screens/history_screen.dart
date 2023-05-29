import 'package:even/data/data.dart';
import 'package:even/value/colors.dart';
import 'package:flutter/material.dart';

class TransactionHistory extends StatefulWidget {
  const TransactionHistory({super.key});

  @override
  State<TransactionHistory> createState() => _TransactionHistoryState();
}

class _TransactionHistoryState extends State<TransactionHistory>
    with TickerProviderStateMixin {
  late AnimationController slideController;
  late AnimationController staggeredController;
  final List<Interval> _itemSlideIntervals = [];
  static const _initialDelayTime = Duration(milliseconds: 50);
  static const _itemSlideTime = Duration(milliseconds: 250);
  static const _staggerTime = Duration(milliseconds: 50);
  @override
  void initState() {
    slideController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 150),
    );
    slideController.forward();
    _createAnimationIntervals();
    staggeredController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..forward();
    super.initState();
  }

  void _createAnimationIntervals() {
    for (var i = 0; i < menuTitles.length; ++i) {
      final startTime = _initialDelayTime + (_staggerTime * i);
      final endTime = startTime + _itemSlideTime;
      _itemSlideIntervals.add(
        Interval(
          startTime.inMilliseconds / const Duration(seconds: 1).inMilliseconds,
          endTime.inMilliseconds / const Duration(seconds: 1).inMilliseconds,
        ),
      );
    }
  }

  @override
  void dispose() {
    slideController.dispose();
    super.dispose();
  }

  List<Widget> buildListItems() {
    final listItems = <Widget>[];
    for (var i = 0; i < menuTitles.length; ++i) {
      listItems.add(
        AnimatedBuilder(
          animation: staggeredController,
          builder: (context, child) {
            final animationPercent = Curves.easeOut.transform(
              _itemSlideIntervals[i].transform(staggeredController.value),
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

  Widget buildContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 16),
        ...buildListItems(),
        const Spacer(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.accent().withOpacity(0.3),
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Choose Type of Service',
          style: TextStyle(color: AppColors.fadeText()),
        ),
        leading: GestureDetector(
          child: const Icon(Icons.close),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: AppColors.accent().withOpacity(0.3),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          buildContent(),
        ],
      ),
    );
  }
}
