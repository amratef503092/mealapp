import 'package:flutter/material.dart';
import 'package:mealapp/1.2%20dummy_data.dart';
import 'package:mealapp/widget/category_Items.dart';
class CategoryScreen extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text(
           "Meal"
         ),
       ),
       body: GridView(
         padding: EdgeInsets.all(25),
         children: DUMMY_CATEGORIES.map((catData)=>
           CategoryItem(
             title:catData.title ,
             color: catData.color,
             id: catData.id,
           )
         ).toList(),
         gridDelegate:SliverGridDelegateWithMaxCrossAxisExtent(
           maxCrossAxisExtent: 200,
           childAspectRatio: 3/2,
           crossAxisSpacing: 20,
           mainAxisSpacing: 20,
         ),
       ),
     );
   }
 }
