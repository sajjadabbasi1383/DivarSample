import 'package:flutter/material.dart';

import 'Model/category_model.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  List<CategoryModel> listCategory = [
    CategoryModel(1, "املاک", Icons.apartment),
    CategoryModel(2, "وسایل نقلیه", Icons.directions_car),
    CategoryModel(3, "کالای دیجیتال", Icons.phone_android),
    CategoryModel(4, "خانه و آشپزخانه", Icons.kitchen),
    CategoryModel(5, "خدمات", Icons.format_paint),
    CategoryModel(6, "وسایل شخصی", Icons.watch),
    CategoryModel(7, "سرگرمی و فراغت", Icons.sports_esports_outlined),
    CategoryModel(8, "استخدام و کاریابی", Icons.work),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(

    ));
  }
}
