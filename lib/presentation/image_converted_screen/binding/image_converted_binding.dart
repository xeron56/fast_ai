import 'package:fast_ai/presentation/image_converted_screen/controller/image_converted_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ImageConvertedScreen.
///
/// This class ensures that the ImageConvertedController is created when the
/// ImageConvertedScreen is first loaded.
class ImageConvertedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ImageConvertedController());
  }
}
