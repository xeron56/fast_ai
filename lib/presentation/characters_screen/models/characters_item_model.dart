import '../../../core/app_export.dart';/// This class is used in the [characters_item_widget] screen.
class CharactersItemModel {CharactersItemModel({this.rectangle, this.id, }) { rectangle = rectangle  ?? Rx(ImageConstant.imgRectangle996);id = id  ?? Rx(""); }

Rx<String>? rectangle;

Rx<String>? id;

 }
