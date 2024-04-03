import 'package:flutter/material.dart';

class CategoryModel {
  String? id;
  String? title;
  Color? color;

  CategoryModel(
      {required this.id, required this.title, this.color = Colors.orange});
}
