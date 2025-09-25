import '/components/food_card/food_card_widget.dart';
import '/components/food_card_long/food_card_long_widget.dart';
import '/components/food_card_small/food_card_small_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'shop_page_widget.dart' show ShopPageWidget;
import 'package:flutter/material.dart';

class ShopPageModel extends FlutterFlowModel<ShopPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for foodCardSmall component.
  late FoodCardSmallModel foodCardSmallModel1;
  // Model for foodCardSmall component.
  late FoodCardSmallModel foodCardSmallModel2;
  // Model for foodCardSmall component.
  late FoodCardSmallModel foodCardSmallModel3;
  // Model for foodCard component.
  late FoodCardModel foodCardModel1;
  // Model for foodCard component.
  late FoodCardModel foodCardModel2;
  // Model for foodCard component.
  late FoodCardModel foodCardModel3;
  // Model for foodCard component.
  late FoodCardModel foodCardModel4;
  // Model for foodCardLong component.
  late FoodCardLongModel foodCardLongModel;

  @override
  void initState(BuildContext context) {
    foodCardSmallModel1 = createModel(context, () => FoodCardSmallModel());
    foodCardSmallModel2 = createModel(context, () => FoodCardSmallModel());
    foodCardSmallModel3 = createModel(context, () => FoodCardSmallModel());
    foodCardModel1 = createModel(context, () => FoodCardModel());
    foodCardModel2 = createModel(context, () => FoodCardModel());
    foodCardModel3 = createModel(context, () => FoodCardModel());
    foodCardModel4 = createModel(context, () => FoodCardModel());
    foodCardLongModel = createModel(context, () => FoodCardLongModel());
  }

  @override
  void dispose() {
    foodCardSmallModel1.dispose();
    foodCardSmallModel2.dispose();
    foodCardSmallModel3.dispose();
    foodCardModel1.dispose();
    foodCardModel2.dispose();
    foodCardModel3.dispose();
    foodCardModel4.dispose();
    foodCardLongModel.dispose();
  }
}
