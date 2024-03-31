import '../../../core/app_export.dart';
import '../models/change_voice_model.dart';

/// A controller class for the ChangeVoiceBottomsheet.
///
/// This class manages the state of the ChangeVoiceBottomsheet, including the
/// current changeVoiceModelObj
class ChangeVoiceController extends GetxController {
  Rx<ChangeVoiceModel> changeVoiceModelObj = ChangeVoiceModel().obs;
}
