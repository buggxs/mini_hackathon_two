import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mini_hackathon_two/features/cubit/home_cubit.dart';
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
      body: BlocProvider<HomeCubit>(
        create: (_) => HomeCubit(),
        child: const HomeScreenContent(),
      ),
      bottomNavigationBar: const FoodBottomNav(),
    );
  }
}

class HomeScreenContent extends StatelessWidget {
  const HomeScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    HomeCubit cubit = context.watch<HomeCubit>();
    HomeState state = cubit.state;

    Widget child;

    return Column(
      children: [
        Text('Home Screen ${state.productAmount}'),
        OutlinedButton(
            onPressed: cubit.increaseAmount, child: const Text('increase'))
      ],
    );
  }
}
