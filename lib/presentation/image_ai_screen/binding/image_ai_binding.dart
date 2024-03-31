import 'package:fast_ai/presentation/image_ai_screen/controller/image_ai_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ImageAiScreen.
///
/// This class ensures that the ImageAiController is created when the
/// ImageAiScreen is first loaded.
class ImageAiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ImageAiController());
  }
}
