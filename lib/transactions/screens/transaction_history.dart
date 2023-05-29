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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  addCosultantButton(),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    child: Text(
                      Strings.addCosultant,
                      style: TextStyle(
                          color: AppColors.accent(),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              transactionList(context),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
