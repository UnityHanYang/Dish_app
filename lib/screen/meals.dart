import 'package:dish_app/widgets/meal_item.dart';
import 'package:dish_app/screen/meal_picture.dart';
import 'package:flutter/material.dart';

import 'package:dish_app/models/meal.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen(
      {super.key,
      this.title,
      required this.meals,});

  final String? title;
  final List<Meal> meals;

  void selectMeal(BuildContext context, Meal meal) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) =>
            MealPictureScreen(meal: meal),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Widget MainContent;

    if (meals.isEmpty) {
      MainContent = Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Text(
            'Empty Here',
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            'choose other dategory',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          )
        ]),
      );
    } else {
      MainContent = ListView.builder(
        itemCount: meals.length,
        itemBuilder: (context, index) => MealItem(
            meal: meals[index],
            onSelectMeal: (meal) {
              selectMeal(context, meal);
            }),
      );
    }
    if (title == null) {
      return MainContent;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
      ),
      body: MainContent,
    );
  }
}