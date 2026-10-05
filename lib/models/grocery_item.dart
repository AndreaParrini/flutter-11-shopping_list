import 'package:shopping_list/models/category.dart';

class GroceryItem {
  const GroceryItem({
    required this.category,
    required this.quantity,
    required this.id,
    required this.name,
  });

  final String id;
  final String name;
  final int quantity;
  final Category category;
}
