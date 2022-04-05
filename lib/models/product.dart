import 'package:flutter_project/models/ingredient.dart';
import 'package:flutter_project/models/nutrition.dart';
import 'package:flutter_project/models/addon.dart';

class Product {
  final String id;
  final String description;
  final String name;
  final String image;
  final double price;
  final int quantity;
  final bool isVegan;
  final double rating;
  final int duration;
  final List<AddOn>? addOns;
  final List<Nutrition> nutrition;
  final List<Ingredients> ingredients;

  Product({
    this.addOns,
    required this.nutrition,
    required this.ingredients,
    required this.id,
    required this.description,
    required this.image,
    required this.rating,
    required this.price,
    required this.quantity,
    required this.duration,
    required this.isVegan,
    required this.name,
  });
}
