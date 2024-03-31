import '../../../core/app_export.dart';import '../models/voice_ai_model.dart';import 'package:flutter/material.dart';/// A controller class for the VoiceAiScreen.
///
/// This class manages the state of the VoiceAiScreen, including the
/// current voiceAiModelObj
class VoiceAiController extends GetxController {TextEditingController durationController = TextEditingController();

Rx<VoiceAiModel> voiceAiModelObj = VoiceAiModel().obs;

SelectionPopupModel? selectedDropDownValue;

@override void onClose() { super.onClose(); durationController.dispose(); } 
onSelected(dynamic value) { for (var element in voiceAiModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} voiceAiModelObj.value.dropdownItemList.refresh(); } 
 }
