import 'package:flutter/material.dart';

import '../models/meal.dart';
import '../widget/meal_item.dart';

class FavoriteSccreen extends StatelessWidget {
  final List<Meal> favoriteMeals;

  FavoriteSccreen(this.favoriteMeals);
  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return Scaffold(
        body: Center(
          child: Text('You have no favorites yet - start addding some!'),
        ),
      );
    }else{
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: favoriteMeals[index].id,
            title: favoriteMeals[index].title,
            imageUrl: favoriteMeals[index].imageUrl,
            complexity: favoriteMeals[index].complexity,
            duration: favoriteMeals[index].duration,
            affordability: favoriteMeals[index].affordability,
          );
        },
        itemCount: favoriteMeals.length,
      );
    }
  }
}
