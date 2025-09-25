import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'edit_shop_page_widget.dart' show EditShopPageWidget;
import 'package:flutter/material.dart';

class EditShopPageModel extends FlutterFlowModel<EditShopPageWidget> {
  ///  Local state fields for this page.

  List<MenuRecord> menu = [];
  void addToMenu(MenuRecord item) => menu.add(item);
  void removeFromMenu(MenuRecord item) => menu.remove(item);
  void removeAtIndexFromMenu(int index) => menu.removeAt(index);
  void insertAtIndexInMenu(int index, MenuRecord item) =>
      menu.insert(index, item);
  void updateMenuAtIndex(int index, Function(MenuRecord) updateFn) =>
      menu[index] = updateFn(menu[index]);

  String? name = '';

  double price = 0.0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
