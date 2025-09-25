import '/flutter_flow/flutter_flow_util.dart';
import 'add_food_widget.dart' show AddFoodWidget;
import 'package:flutter/material.dart';

class AddFoodModel extends FlutterFlowModel<AddFoodWidget> {
  ///  Local state fields for this component.

  String? name;

  double price = 0.0;

  ///  State fields for stateful widgets in this component.

  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for price widget.
  FocusNode? priceFocusNode;
  TextEditingController? priceTextController;
  String? Function(BuildContext, String?)? priceTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    priceFocusNode?.dispose();
    priceTextController?.dispose();
  }
}
