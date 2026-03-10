import 'package:flutter/material.dart';
import 'package:water_products/Feature/home/presentation/screens/home_screen.dart';

import '../../../cart/presentation/screens/cart_screen.dart';
import '../../../orders/presentation/screens/order_screen.dart';
import '../../../setting/presentation/screens/setting_screen.dart';
import '../views/bottom_navigation_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late PageController pageController;
  int currentScreen = 0;
  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: pageController,
          onPageChanged: onPageChanged,
          children: [
            HomeScreen(),
            CartScreen(),
            OrderScreen(),
            SettingScreen(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBarView(
        currentScreen: currentScreen,
        onTap: onButtonNavigationTap,
      ),
    );
  }

  void onPageChanged(int page) {
    setState(() {
      currentScreen = page;
    });
  }

  void onButtonNavigationTap(int page) {
    setState(() {
      pageController.jumpToPage(page);
      currentScreen = page;
    });
  }
}
