import 'package:flutter/material.dart';
import 'package:mealapp/screens/category_screen.dart';
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "meal App",
        )
      ),
      body: CategoryScreen(),
    );
  }
}
