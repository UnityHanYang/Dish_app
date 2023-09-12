import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dish_app/models/meal.dart';

class FavoritemealNotifier extends StateNotifier<List<Meal>> {
  FavoritemealNotifier() : super([]);
  //super([]) -> 호출, 추가, 제거는 불가, 교체만 가능

  bool toggleMealFavoriteStatus(Meal meal) {
    final mealIsFavorite = state.contains(meal);

    if (mealIsFavorite) {
      state = state.where((meal) => meal.id != meal.id).toList();
      return false;
    } else {
      state = [...state, meal]; //spread, 새 list에 개별요소로 추가
      return true;
    }
  }
}

final favoriteMealsProvider =
    StateNotifierProvider<FavoritemealNotifier, List<Meal>>((ref) {
  return FavoritemealNotifier();
});
