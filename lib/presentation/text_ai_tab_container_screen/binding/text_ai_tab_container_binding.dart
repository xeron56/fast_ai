import 'package:fast_ai/presentation/text_ai_tab_container_screen/controller/text_ai_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TextAiTabContainerScreen.
///
/// This class ensures that the TextAiTabContainerController is created when the
/// TextAiTabContainerScreen is first loaded.
class TextAiTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TextAiTabContainerController());
  }
}
