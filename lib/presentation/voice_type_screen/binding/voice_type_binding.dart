import 'package:fast_ai/presentation/voice_type_screen/controller/voice_type_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VoiceTypeScreen.
///
/// This class ensures that the VoiceTypeController is created when the
/// VoiceTypeScreen is first loaded.
class VoiceTypeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VoiceTypeController());
  }
}
