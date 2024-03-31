import '../../../core/app_export.dart';import 'cards1_item_model.dart';/// This class defines the variables used in the [avatar_collection_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AvatarCollectionModel {Rx<List<Cards1ItemModel>> cards1ItemList = Rx([Cards1ItemModel(myAvatarSetOne:ImageConstant.imgRectangle1014.obs,image:ImageConstant.imgRectangle1015.obs,image1:ImageConstant.imgRectangle1016.obs,myAvatarSetOne1: "My Avatar Set 1".obs,avatarsCounter: "20 Avatars".obs),Cards1ItemModel(myAvatarSetOne:ImageConstant.imgRectangle1014120x102.obs,image:ImageConstant.imgRectangle1015120x103.obs,image1:ImageConstant.imgRectangle1016120x102.obs,myAvatarSetOne1: "My Avatar Set 2".obs,avatarsCounter: "20 Avatars".obs)]);

 }
