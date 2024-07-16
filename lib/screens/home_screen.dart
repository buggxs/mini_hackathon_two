import 'package:flutter/material.dart';
import 'package:mini_hackathon_two/widgets/food_bottom_nav.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Food App'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      body: const Center(
        child: Text('Home Screen'),
      ),
      bottomNavigationBar: const FoodBottomNav(),
    );
  }
}
