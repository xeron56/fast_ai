import 'package:fast_ai/presentation/content_rewrite_screen/controller/content_rewrite_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ContentRewriteScreen.
///
/// This class ensures that the ContentRewriteController is created when the
/// ContentRewriteScreen is first loaded.
class ContentRewriteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ContentRewriteController());
  }
}
