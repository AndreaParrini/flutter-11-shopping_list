import 'package:flutter/material.dart';
import 'package:shopping_list/data/dummy_items.dart';

class ShoppingListScreen extends StatelessWidget {
  const ShoppingListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: groceryItems.length,
      itemBuilder: (ctx, index) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8.0),
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  color: groceryItems[index].category.color,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(groceryItems[index].name),
              const Spacer(),
              Text(
                groceryItems[index].quantity.toString(),
              ),
            ],
          ),
        );
      },
    );
  }
}
