import 'package:fast_ai/presentation/image_ai_uploaded_screen/controller/image_ai_uploaded_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ImageAiUploadedScreen.
///
/// This class ensures that the ImageAiUploadedController is created when the
/// ImageAiUploadedScreen is first loaded.
class ImageAiUploadedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ImageAiUploadedController());
  }
}
