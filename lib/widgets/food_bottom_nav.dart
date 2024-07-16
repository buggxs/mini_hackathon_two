import 'package:flutter/material.dart';

class FoodBottomNav extends StatelessWidget {
  const FoodBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: 1,
      destinations: const <NavigationDestination>[
        NavigationDestination(
          selectedIcon: Icon(Icons.qr_code_scanner),
          icon: Icon(Icons.qr_code_scanner_outlined),
          label: 'Scan',
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.home),
          icon: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.shopping_cart),
          icon: Icon(Icons.shopping_cart_outlined),
          label: 'List',
        ),
      ],
    );
  }
}
