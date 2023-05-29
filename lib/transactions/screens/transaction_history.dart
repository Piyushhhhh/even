import 'package:even/transactions/widgets/add_consultant_button.dart';
import 'package:even/transactions/widgets/bottom_naviagtion_bar.dart';
import 'package:even/transactions/widgets/trasaction_list.dart';
import 'package:even/value/colors.dart';
import 'package:even/value/strings.dart';
import 'package:flutter/material.dart';

class TransactionHistory extends StatefulWidget {
  const TransactionHistory({super.key});

  @override
  State<TransactionHistory> createState() => _TransactionHistoryState();
}

class _TransactionHistoryState extends State<TransactionHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          Strings.myHistory,
          style: TextStyle(
              color: AppColors.fadeText(),
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: AppColors.background(),
        elevation: 0,
      ),
      backgroundColor: AppColors.background(),
      bottomNavigationBar: customBottomNavigationBar(),
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              addCosultantButton(),
              transactionList(context),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
