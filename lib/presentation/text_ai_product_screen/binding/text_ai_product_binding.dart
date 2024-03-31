import 'package:fast_ai/presentation/text_ai_product_screen/controller/text_ai_product_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TextAiProductScreen.
///
/// This class ensures that the TextAiProductController is created when the
/// TextAiProductScreen is first loaded.
class TextAiProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TextAiProductController());
  }
}
