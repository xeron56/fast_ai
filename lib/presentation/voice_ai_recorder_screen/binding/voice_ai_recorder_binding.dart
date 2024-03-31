import 'package:fast_ai/presentation/voice_ai_recorder_screen/controller/voice_ai_recorder_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VoiceAiRecorderScreen.
///
/// This class ensures that the VoiceAiRecorderController is created when the
/// VoiceAiRecorderScreen is first loaded.
class VoiceAiRecorderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VoiceAiRecorderController());
  }
}
