import 'package:even/value/strings.dart';
import 'package:flutter/material.dart';
import 'transactions/screens/transaction_history.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.appName,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TransactionHistory(),
    );
  }
}
