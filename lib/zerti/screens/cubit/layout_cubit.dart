import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delevery/zerti/screens/cubit/layout_state.dart';
import 'package:food_delevery/zerti/test_models/food_item_model.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(LayoutInitial());
  bool isFavorie = false;
  List<FoodItemModel> favorits = [];
  void addOrRemoveFavorite(FoodItemModel foodItem) {
    if (foodItem != null) {
      favorits.add(foodItem);
      print('Success favorite is ${favorits.length}');
      emit(AddFavoriteSuccess());
    } else {
      favorits.remove(foodItem);
      print('Error favorite is ${favorits.length}');
      emit(AddFavoriteError());
    }
  }
}
