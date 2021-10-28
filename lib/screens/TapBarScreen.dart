import 'package:flutter/material.dart';
import 'package:mealapp/screens/FavouritScreen.dart';
import 'package:mealapp/screens/category_screen.dart';

import 'Drawer_Screen.dart';
class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int selectpageIndex = 0;
  final List <Map<String , Object>> _pages = [
    {
      'page' : CategoryScreen(),
      'title' : 'Categorise'
    },
    {
      'page' : FavoritesScreen(),
      'title' : 'Your Favorite'
    }
  ];
  void _selectPage(int value){
    setState(() {
      selectpageIndex = value;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            _pages[selectpageIndex]['title']
        ),
      ),
      body: _pages[selectpageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).accentColor,
        unselectedItemColor: Colors.white,
        currentIndex: selectpageIndex,
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.category),title: Text(
                "Categories",
              )

    ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.star),title: Text(
                "Favorite",
              )

              ),
        ],
      ),
      drawer: DrawerScreen(),
    );
  }
}
