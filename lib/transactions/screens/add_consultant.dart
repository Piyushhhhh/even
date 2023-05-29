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
        AnimatedPositioned(
          duration: const Duration(milliseconds: 350),
          height: 48,
          bottom: MediaQuery.of(context).padding.bottom + 16,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 48,
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(48))),
                backgroundColor: AppColors.accent(),
              ),
              onPressed: () {},
              child: Text(
                "Continue",
                style: TextStyle(
                  fontSize: 18,
                  color: AppColors.fadeText(),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background(),
      appBar: AppBar(
        elevation: 0,
        title: Text(
          Strings.chooseAtypeOfService,
          style: TextStyle(color: AppColors.fadeText()),
        ),
        leading: GestureDetector(
          child: Icon(Icons.close, color: AppColors.fadeText()),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: AppColors.background(),
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
