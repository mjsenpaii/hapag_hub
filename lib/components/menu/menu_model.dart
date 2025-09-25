import '/components/edit_food/edit_food_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'menu_widget.dart' show MenuWidget;
import 'package:flutter/material.dart';

class MenuModel extends FlutterFlowModel<MenuWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for editFood component.
  late EditFoodModel editFoodModel1;
  // Model for editFood component.
  late EditFoodModel editFoodModel2;

  @override
  void initState(BuildContext context) {
    editFoodModel1 = createModel(context, () => EditFoodModel());
    editFoodModel2 = createModel(context, () => EditFoodModel());
  }

  @override
  void dispose() {
    editFoodModel1.dispose();
    editFoodModel2.dispose();
  }
}
