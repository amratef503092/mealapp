import 'package:flutter/material.dart';

import '../1.2 dummy_data.dart';
import 'Item meal screen.dart';

class CaregoryMealScreen extends StatefulWidget {
  static const routeName = 'CaregoryMealScreen';
  @override
  _CaregoryMealScreenState createState() => _CaregoryMealScreenState();
}

class _CaregoryMealScreenState extends State<CaregoryMealScreen> {
  @override
  Widget build(BuildContext context) {
    final routeArg =
        ModalRoute.of(context).settings.arguments as Map<String, Object>;
    final CaregorID = routeArg['id'];
    final title = routeArg['title'];
    final categoryMeal = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(CaregorID);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return ItemMeal(
            imageUrl: categoryMeal[index].imageUrl,
            title: categoryMeal[index].title,
            duration: categoryMeal[index].duration,
            affordability: categoryMeal[index].affordability,
            complexity: categoryMeal[index].complexity,
            id:categoryMeal[index].id ,
          );
        },
        itemCount: categoryMeal.length,
      ),
    );
  }
}
