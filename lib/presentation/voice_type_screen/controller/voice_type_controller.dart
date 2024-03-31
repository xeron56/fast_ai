import '../../../core/app_export.dart';
import '../models/voice_type_model.dart';

/// A controller class for the VoiceTypeScreen.
///
/// This class manages the state of the VoiceTypeScreen, including the
/// current voiceTypeModelObj
class VoiceTypeController extends GetxController {
  Rx<VoiceTypeModel> voiceTypeModelObj = VoiceTypeModel().obs;
}
