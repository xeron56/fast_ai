import '../../../core/app_export.dart';
import '../models/text_ai_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the TextAiPage.
///
/// This class manages the state of the TextAiPage, including the
/// current textAiModelObj
class TextAiController extends GetxController {
  TextAiController(this.textAiModelObj);

  TextEditingController durationController = TextEditingController();

  TextEditingController toneOfVoiceController = TextEditingController();

  Rx<TextAiModel> textAiModelObj;

  @override
  void onClose() {
    super.onClose();
    durationController.dispose();
    toneOfVoiceController.dispose();
  }
}
