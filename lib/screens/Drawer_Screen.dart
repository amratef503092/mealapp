import 'package:flutter/material.dart';
import 'package:mealapp/screens/Filters_Screen.dart';
class DrawerScreen extends StatelessWidget {
  Widget BuildListTile(String title , IconData icon , Function tap){
    return ListTile(
      leading: Icon(
        icon , size: 26 ,
      ),
      title: Text(
        title , style: TextStyle(
          fontSize: 24,
          fontFamily: 'RobotoCondensed',
          fontWeight: FontWeight.bold
      ),
      ),
      onTap: tap,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color : Theme.of(context).accentColor,
            child: Text(
              "Cooking up" ,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
                color: Theme.of(context).primaryColor,




              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),

          BuildListTile('Meal',Icons.restaurant ,(){Navigator.of(context).pushReplacementNamed('/');}),
          BuildListTile('Filters',Icons.settings ,(){Navigator.of(context).pushReplacementNamed(FilterScreen.routeName);}),

        ],
      ),
    );
  }
}
