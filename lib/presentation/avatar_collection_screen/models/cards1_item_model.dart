import '../../../core/app_export.dart';/// This class is used in the [cards1_item_widget] screen.
class Cards1ItemModel {Cards1ItemModel({this.myAvatarSetOne, this.image, this.image1, this.myAvatarSetOne1, this.avatarsCounter, this.id, }) { myAvatarSetOne = myAvatarSetOne  ?? Rx(ImageConstant.imgRectangle1014);image = image  ?? Rx(ImageConstant.imgRectangle1015);image1 = image1  ?? Rx(ImageConstant.imgRectangle1016);myAvatarSetOne1 = myAvatarSetOne1  ?? Rx("My Avatar Set 1");avatarsCounter = avatarsCounter  ?? Rx("20 Avatars");id = id  ?? Rx(""); }

Rx<String>? myAvatarSetOne;

Rx<String>? image;

Rx<String>? image1;

Rx<String>? myAvatarSetOne1;

Rx<String>? avatarsCounter;

Rx<String>? id;

 }
