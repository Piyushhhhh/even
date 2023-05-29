import 'package:even/transactions/widgets/transaction_item.dart';
import 'package:flutter/material.dart';

Widget transactionList(BuildContext context) {
  return ListView.builder(
    shrinkWrap: true,
    itemCount: 7,
    physics: const NeverScrollableScrollPhysics(),
    scrollDirection: Axis.vertical,
    // padding: const EdgeInsets.all(0),
    itemBuilder: (newContext, i) {
      return transactionItem(context, i);
    },
  );
}
