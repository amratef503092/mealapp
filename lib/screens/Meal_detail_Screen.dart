import 'package:flutter/material.dart';

import '../1.2 dummy_data.dart';

class DetailScreen extends StatelessWidget {
  static const routeName = 'DetailScreen';


  @override
  Widget build(BuildContext context) {
    final MealID = ModalRoute.of(context).settings.arguments as String;
    final MealDetails = DUMMY_MEALS.firstWhere((meal) => meal.id == MealID);
    return Scaffold(
      appBar: AppBar(
        title: Text(MealDetails.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              child: Image.network(
                MealDetails.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "ingredients",
                style: Theme.of(context).textTheme.title,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Container(
                width: 300,
                height: 200,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ListView.builder(
                  itemBuilder: (Ctx, index) {
                    return Card(
                      color: Colors.amber,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 10),
                        child: Text(
                          MealDetails.ingredients[index],
                        ),
                      ),
                    );
                  },
                  itemCount: MealDetails.ingredients.length,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Steps",
                style: Theme.of(context).textTheme.title,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Container(
                width: 300,
                height: 200,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ListView.builder(
                  itemBuilder: (ctx, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: ListTile(
                        leading: CircleAvatar(
                          child: Text(
                            "# ${index+1}"
                          ),
                        ),
                          title: Text(
                              MealDetails.steps[index]
                          ) ,
                        ),
                      ),
                    );
                  },
                  itemCount: MealDetails.ingredients.length,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
