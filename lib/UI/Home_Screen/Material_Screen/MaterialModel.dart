import 'package:flutter/material.dart';

import '../../../dartFiles/MaterialScreen_UI/Alertdialog_UI.dart';
import '../../../dartFiles/MaterialScreen_UI/Animated Padding_UI.dart';
import '../../../dartFiles/MaterialScreen_UI/Animated Positioned_UI.dart';
import '../../../dartFiles/MaterialScreen_UI/Animated Switcher_UI.dart';
import '../../../dartFiles/MaterialScreen_UI/AnimatedCrossFade_UI.dart';
import '../../../dartFiles/MaterialScreen_UI/AnimatedOpacity_UI.dart';
import '../../../dartFiles/MaterialScreen_UI/Button_UI.dart';
import '../../../dartFiles/MaterialScreen_UI/Card_UI.dart';
import '../../../dartFiles/MaterialScreen_UI/ClipOval_UI.dart';
import '../../../dartFiles/MaterialScreen_UI/ClipRRect_UI.dart';
import '../../../dartFiles/MaterialScreen_UI/Column_UI.dart';
import '../../../dartFiles/MaterialScreen_UI/Container_UI.dart';
import '../../../dartFiles/MaterialScreen_UI/CupertinoActivityIndicator_UI.dart';
import '../../../dartFiles/MaterialScreen_UI/DataTable_UI.dart';
import '../../../dartFiles/MaterialScreen_UI/Divider_UI.dart';
import '../../../dartFiles/MaterialScreen_UI/DraggableScrollSheet_UI.dart';
import '../../../dartFiles/MaterialScreen_UI/Expanded_UI.dart';
import '../../../dartFiles/MaterialScreen_UI/Floating ActionButton_UI.dart';
import '../../../dartFiles/MaterialScreen_UI/Image_UI.dart';
import '../../../dartFiles/MaterialScreen_UI/Indexed Stack_UI.dart';
import '../../../dartFiles/MaterialScreen_UI/Limited Box_UI.dart';
import '../../../dartFiles/MaterialScreen_UI/ListTile_UI.dart';
import '../../../dartFiles/MaterialScreen_UI/ListView_UI.dart';
import '../../../dartFiles/MaterialScreen_UI/Padding_UI.dart';
import '../../../dartFiles/MaterialScreen_UI/Placeholder_UI.dart';
import '../../../dartFiles/MaterialScreen_UI/Positioned_UI.dart';
import '../../../dartFiles/MaterialScreen_UI/ProgressIndicator_UI.dart';
import '../../../dartFiles/MaterialScreen_UI/Reorderable List View.dart';
import '../../../dartFiles/MaterialScreen_UI/Row_UI.dart';
import '../../../dartFiles/MaterialScreen_UI/Semantics_UI.dart';
import '../../../dartFiles/MaterialScreen_UI/ShaderMask_UI.dart';
import '../../../dartFiles/MaterialScreen_UI/Sized Box_UI.dart';
import '../../../dartFiles/MaterialScreen_UI/Slide_UI.dart';
import '../../../dartFiles/MaterialScreen_UI/Spacer_UI.dart';
import '../../../dartFiles/MaterialScreen_UI/Stack_UI.dart';
import '../../../dartFiles/MaterialScreen_UI/Switch_UI.dart';
import '../../../dartFiles/MaterialScreen_UI/TextField_UI.dart';
import '../../../dartFiles/MaterialScreen_UI/Text_UI.dart';
import '../../../dartFiles/MaterialScreen_UI/ToggleButton_UI.dart';
import '../../../dartFiles/MaterialScreen_UI/Tooltip_UI.dart';

class MaterialModel{
  String screenName;
  Widget widgetData;
  MaterialModel(this.screenName, this.widgetData);

}

 List<MaterialModel> allData =[
  MaterialModel("Text", const Text_UI(),),
  MaterialModel("Column", const Column_UI()),
  MaterialModel("Row", const Row_UI()),
  MaterialModel("Button", const Button_UI()),
  MaterialModel("Container", const Container_UI()),
  MaterialModel("Expanded", const Expanded_UI()),
  MaterialModel("FloatingActionButton", const FloatingActionButton_UI()),
  MaterialModel("ClipRRext", const ClipRRext_UI()),
  MaterialModel("Tooltip", const Tooltip_UI()),
  MaterialModel("Switch", const Switch_UI()),
  MaterialModel("TextField", const TextField_UI()),
  MaterialModel("Card", const Card_UI()),
  MaterialModel("SizeBox", const SizeBox_UI()),
  MaterialModel("Spacer", const Spacer_UI()),
  MaterialModel("LimitedBox", const LimitedBox_UI()),
  MaterialModel("Placeholder", const Placeholder_UI()),
  MaterialModel("ReorderableListView", const ReorderableListView_UI()),
  MaterialModel("AnimatedPaddng", const AnimatedPaddng_UI()),
  MaterialModel("AnimatedSwitcher", const AnimatedSwitcher_UI()),
  MaterialModel("AnimatedPositioned", const AnimatedPositioned_UI()),
  MaterialModel("IndexedStack", const IndexedStack_UI()),
  MaterialModel("Semantics", const Semantics_UI()),
  MaterialModel("Stack", const Stack_UI()),
  MaterialModel("Positioned", const Positioned_UI()),
  MaterialModel("AnimatedOpacity", const AnimatedOpacity_UI()),
  MaterialModel("ListView", const ListView_UI()),
  MaterialModel("ListTile", const ListTile_UI()),
  MaterialModel("DataTable", const DataTable_UI()),
  MaterialModel("Slide", const Slide_UI()),
  MaterialModel("Alertdialog", const Alertdialog_UI()),
  MaterialModel("AnimatedCrossFade", const AnimatedCrossFade_UI()),
  MaterialModel("DraggableScrollSheet", const DraggableScrollSheet_UI()),
  MaterialModel("ToggleButton", const ToggleButton_UI()),
  MaterialModel("Image", const Image_UI()),
  MaterialModel("ShaderMask", const ShaderMask_UI()),
  MaterialModel("ProgressIndicator", const ProgressIndicator_UI()),
  MaterialModel("Divider", const Divider_UI()),
  MaterialModel("Cupertino Indicator", const CupertinoActivityIndicator_UI()),
  MaterialModel("ClipOval", const ClipOval_UI()),
  MaterialModel("Padding", const Padding_UI()),
];