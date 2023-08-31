import 'package:flutter/material.dart';

class CategoryModel {
  String categoryName;
  String imagePath;
  Color color;

  CategoryModel({
    required this.categoryName,
    required this.imagePath,
    required this.color,
  });
}

List<CategoryModel> categoryModelItem = [
  CategoryModel(
    categoryName: 'Fruit',
    imagePath: 'assets/images/avocado.png',
    color: Colors.green.shade600.withOpacity(0.1),
  ),
  CategoryModel(
    categoryName: 'Vegetable',
    imagePath: 'assets/images/banana.png',
    color: Colors.amber.shade600.withOpacity(0.1),
  ),
  CategoryModel(
    categoryName: 'Meal',
    imagePath: 'assets/images/orange.png',
    color: Colors.purple.shade600.withOpacity(0.1),
  ),
];
