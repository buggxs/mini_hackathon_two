import 'package:flutter/material.dart';

class ShoppingListScreen extends StatefulWidget {
  const ShoppingListScreen({super.key});

  @override
  State<ShoppingListScreen> createState() => _ShoppingListScreenState();
}

class _ShoppingListScreenState extends State<ShoppingListScreen> {
  final TextEditingController _searchTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return Padding(
                padding: MediaQuery.of(context).viewInsets.add(
                      const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 20,
                      ),
                    ),
                child: SizedBox(
                  height: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Add Food',
                        style: Theme.of(context).textTheme.titleLarge!,
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        controller: _searchTextController,
                        decoration: const InputDecoration(
                          hintText: 'Search food..',
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (value) {},
                      ),
                      const SizedBox(height: 30),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.add_shopping_cart_outlined),
                        label: const Text('Add to cart'),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
