import 'package:flutter/material.dart';

import 'shared/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'transactions/screens/transaction_history.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<Widget> _pages;
  late PageController _pageController;
  int _currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    _pages = [
      const TransactionHistory(),
      Container(),
      Container(),
      Container(),
    ];

    _pageController =
        PageController(initialPage: _currentPageIndex, keepPage: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _pageController,
        scrollDirection: Axis.horizontal,
        onPageChanged: (index) {
          _currentPageIndex = index;
          setState(() {});
        },
        itemBuilder: (context, index) {
          if (index > _pages.length) {
            return const Scaffold();
          }
          return _pages[index];
        },
        itemCount: _pages.length,
      ),
      bottomNavigationBar: AppBottomNavigationBar(
        currentIndex: _currentPageIndex,
        onChange: (int selectedIndex) {
          _currentPageIndex = selectedIndex;
          _pageController.animateToPage(selectedIndex,
              duration: const Duration(milliseconds: 350),
              curve: Curves.easeIn);
          setState(() {});
        },
      ),
    );
  }
}
