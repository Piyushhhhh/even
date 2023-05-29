import 'package:even/value/colors.dart';
import 'package:flutter/widgets.dart';

class TransactionTime extends StatefulWidget {
  const TransactionTime({super.key});

  @override
  State<TransactionTime> createState() => _TransactionTimeState();
}

class _TransactionTimeState extends State<TransactionTime> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 7,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Container(
          color: AppColors.primary(),
          width: 2,
          height: 7,
        );
      },
    );
  }
}
