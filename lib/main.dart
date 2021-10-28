import 'package:flutter/material.dart';
import 'package:mealapp/screens/CategortMealScreen.dart';
import 'package:mealapp/screens/Filters_Screen.dart';
import 'package:mealapp/screens/Meal_detail_Screen.dart';
import 'package:mealapp/screens/TapBarScreen.dart';
import 'package:mealapp/screens/category_screen.dart';

import 'MyHomePage.dart';

main() => runApp(Homepage());

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Demo",
      theme: ThemeData(
          primaryColor: Colors.pink,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          textTheme: ThemeData.light().textTheme.copyWith(
                body1: TextStyle(color: Color.fromRGBO(20, 50, 50, 1)),
                title: TextStyle(
                  fontSize: 24,
                  fontFamily: 'RobotoCondensed',
                ),
              )),
      routes: {
        '/': (context) => TabsScreen(),
        CaregoryMealScreen.routeName: (context) => CaregoryMealScreen(),
        DetailScreen.routeName: (context) => DetailScreen(),
        FilterScreen.routeName : (context) => FilterScreen(),
      },
    );
  }
}
