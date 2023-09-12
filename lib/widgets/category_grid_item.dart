import 'package:flutter/material.dart';
import 'package:dish_app/models/category.dart';

class CategoryGridItem extends StatelessWidget{
  const CategoryGridItem({super.key, required this.category, required this.func});

  final Category category;
  final void Function() func;

  @override
  Widget build(BuildContext context){
    return InkWell( 
      onTap: func,
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(colors: [
            category.color.withOpacity(0.55),
            category.color.withOpacity(0.9),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
          child: Text(
            category.title,
            style: TextStyle(
              color: Theme.of(context).colorScheme.onBackground,
              fontFamily: 'Schyler',
              fontSize: 20,
            ),
          ),
      ),
    );
  }
}