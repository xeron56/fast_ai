import '../../../core/app_export.dart';/// This class is used in the [images_item_widget] screen.
class ImagesItemModel {ImagesItemModel({this.image, this.id, }) { image = image  ?? Rx(ImageConstant.imgRectangle1001250x315);id = id  ?? Rx(""); }

Rx<String>? image;

Rx<String>? id;

 }
