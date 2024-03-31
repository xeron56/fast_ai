import 'package:fast_ai/presentation/video_ai_full_screen/controller/video_ai_full_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VideoAiFullScreen.
///
/// This class ensures that the VideoAiFullController is created when the
/// VideoAiFullScreen is first loaded.
class VideoAiFullBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VideoAiFullController());
  }
}
