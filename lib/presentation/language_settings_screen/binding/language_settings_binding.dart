import 'package:fast_ai/presentation/language_settings_screen/controller/language_settings_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LanguageSettingsScreen.
///
/// This class ensures that the LanguageSettingsController is created when the
/// LanguageSettingsScreen is first loaded.
class LanguageSettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LanguageSettingsController());
  }
}
