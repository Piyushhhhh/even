import 'package:even/data/data.dart';
import 'package:even/transactions/widgets/add_consulation_list.dart';
import 'package:even/value/colors.dart';
import 'package:even/value/strings.dart';
import 'package:flutter/material.dart';

class AddConsultant extends StatefulWidget {
  const AddConsultant({super.key});

  @override
  State<AddConsultant> createState() => _AddConsultantState();
}

class _AddConsultantState extends State<AddConsultant>
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
    staggeredController.dispose();
    super.dispose();
  }

  Widget buildContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 16),
        ...buildListItems(staggeredController, _itemSlideIntervals),
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
          Strings.chooseAtypeOfService,
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
