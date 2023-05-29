import 'package:even/dashboard/widgets/hospital_items.dart';
import 'package:even/dashboard/widgets/hospital_list_horizontal.dart';
import 'package:even/value/colors.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Text(
              "Hospitals near you",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.text()),
            ),
            const SizedBox(height: 16),
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.45,
                child: const HostpitalListHorizontal()),
            const SizedBox(height: 32),
            Text(
              "Your medical concierge",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.text()),
            ),
            const Divider(
              color: Colors.grey,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 4),
              child: ConciergeItem(),
            ),
            const Divider(
              color: Colors.grey,
            ),
          ],
        ),
      )),
    );
  }
}
