import 'package:fast_ai/presentation/avatar_collection_screen/controller/avatar_collection_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AvatarCollectionScreen.
///
/// This class ensures that the AvatarCollectionController is created when the
/// AvatarCollectionScreen is first loaded.
class AvatarCollectionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AvatarCollectionController());
  }
}
