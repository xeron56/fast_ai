import 'package:fast_ai/presentation/voice_ai_screen/controller/voice_ai_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VoiceAiScreen.
///
/// This class ensures that the VoiceAiController is created when the
/// VoiceAiScreen is first loaded.
class VoiceAiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VoiceAiController());
  }
}
