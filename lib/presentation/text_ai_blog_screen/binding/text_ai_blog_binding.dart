import 'package:fast_ai/presentation/text_ai_blog_screen/controller/text_ai_blog_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TextAiBlogScreen.
///
/// This class ensures that the TextAiBlogController is created when the
/// TextAiBlogScreen is first loaded.
class TextAiBlogBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TextAiBlogController());
  }
}
