import 'package:even/transactions/widgets/transaction_item.dart';
import 'package:flutter/material.dart';

Widget transactionList(BuildContext context) {
  return ListView.builder(
    shrinkWrap: true,
    itemCount: 7,
    physics: const NeverScrollableScrollPhysics(),
    scrollDirection: Axis.vertical,
    itemBuilder: (newContext, i) {
      return transactionItem(context);
    },
  );
}
