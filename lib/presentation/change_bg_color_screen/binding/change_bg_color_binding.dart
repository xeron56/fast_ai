import 'package:fast_ai/presentation/change_bg_color_screen/controller/change_bg_color_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChangeBgColorScreen.
///
/// This class ensures that the ChangeBgColorController is created when the
/// ChangeBgColorScreen is first loaded.
class ChangeBgColorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChangeBgColorController());
  }
}
