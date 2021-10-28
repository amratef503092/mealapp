import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mealapp/screens/CategortMealScreen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  const CategoryItem({this.id, this.title, this.color});
  void selectCategory(BuildContext ctx){
    Navigator.of(ctx).pushNamed(CaregoryMealScreen.routeName,
    arguments: {
      'id': id,
      'title' : title,
      'color' : color,
    });
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              color.withOpacity(0.7),
              color,
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            color: color,
            borderRadius: BorderRadius.circular(15)),
         child: Text(title , style: Theme.of(context).textTheme.title,),
      ),
    );
  }
}
