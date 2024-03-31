import '../../../core/app_export.dart';/// This class is used in the [videoai_item_widget] screen.
class VideoaiItemModel {VideoaiItemModel({this.rectangle, this.id, }) { rectangle = rectangle  ?? Rx(ImageConstant.imgRectangle997);id = id  ?? Rx(""); }

Rx<String>? rectangle;

Rx<String>? id;

 }
