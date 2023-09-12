import 'package:dish_app/data/dummy_data.dart';
import 'package:dish_app/screen/categories.dart';
import 'package:dish_app/screen/filters.dart';
import 'package:dish_app/screen/meals.dart';
import 'package:dish_app/widgets/main_drawer.dart';
import 'package:flutter/material.dart';
import 'package:dish_app/providers/meals_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dish_app/providers/favorite_provider.dart';


var kInitialFilters = {
  Filter.fourstar: false,
  Filter.threestar: false,
  Filter.twostar: false,
  Filter.onestar: false,
  Filter.hundradgood: false,
  Filter.thousand: false,
  Filter.oneSelect: false,
};

class TabsScreen extends ConsumerStatefulWidget {
  const TabsScreen({super.key});

  @override 
  ConsumerState<TabsScreen> createState() {
    return _TabsScreenState();
  }
}

class _TabsScreenState extends ConsumerState<TabsScreen> {
  int _selectedPageIndex = 0;

  //final List<Meal> _favoriteMeals = [];
  Map<Filter, bool> _selectedFileters = kInitialFilters;

  // void _toggleMealFavoriteStatus(Meal meal) {
  //   final isExisting = _favoriteMeals.contains(meal);

  //   if (isExisting) {
  //     setState(() {
  //       _favoriteMeals.remove(meal);
  //     });
  //     _showInfoMessage('Favorite remove');
  //   } else {
  //     setState(() {
  //       _favoriteMeals.add(meal);
  //     });
  //     _showInfoMessage('Marked as Favorite');
  //   }
  // }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  void _setScreen(String identifier) async {
    Navigator.of(context).pop();
    if (identifier == 'filters') {
      final result = await Navigator.of(context).push<Map<Filter, bool>>(
        MaterialPageRoute(
          builder: (context) => FiltersScreen(currentFilters: _selectedFileters),
        ),
      );
      setState(() {
        _selectedFileters = result ?? kInitialFilters;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final meals = ref.watch(mealsProvider);
    final avaiableMeals = dummyMeals.where((meal) {
      if (_selectedFileters[Filter.fourstar]! && !meal.isGlutenFree) {
        return false;
      }
      if (_selectedFileters[Filter.threestar]! && !meal.isLactoseFree) {
        return false;
      }
      if (_selectedFileters[Filter.twostar]! && !meal.isVegetarian) {
        return false;
      }
      if (_selectedFileters[Filter.onestar]! && !meal.isVegan) {
        return false;
      }
      if (_selectedFileters[Filter.hundradgood]! && !meal.isHundred) {
        return false;
      }
      if (_selectedFileters[Filter.thousand]! && !meal.isthousand) {
        return false;
      }
      if (_selectedFileters[Filter.oneSelect]! && !meal.isOne) {
        return false;
      }
      return true;
    }).toList();
    Widget activePage = CategoriesScreen(
      availableMeals: avaiableMeals,
    );
    var activePageTitle = '한국대중음악';

    if (_selectedPageIndex == 1) {
      final favoriteMeals = ref.watch(favoriteMealsProvider);
      activePage = MealsScreen(
        meals: favoriteMeals,
      );
      activePageTitle = 'Favorites';
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(activePageTitle),
      ),
      drawer: MainDrawer(onSelectScreen: _setScreen),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.set_meal), label: 'Categories'),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Favorites',
          ),
        ],
      ),
    );
  }
}
