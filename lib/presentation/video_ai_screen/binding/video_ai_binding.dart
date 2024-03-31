import 'package:fast_ai/presentation/video_ai_screen/controller/video_ai_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VideoAiScreen.
///
/// This class ensures that the VideoAiController is created when the
/// VideoAiScreen is first loaded.
class VideoAiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VideoAiController());
  }
}
