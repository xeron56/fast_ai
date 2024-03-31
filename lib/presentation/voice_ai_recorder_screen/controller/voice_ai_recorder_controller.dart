import '../../../core/app_export.dart';import '../models/voice_ai_recorder_model.dart';import 'package:flutter/material.dart';/// A controller class for the VoiceAiRecorderScreen.
///
/// This class manages the state of the VoiceAiRecorderScreen, including the
/// current voiceAiRecorderModelObj
class VoiceAiRecorderController extends GetxController {TextEditingController durationController = TextEditingController();

Rx<VoiceAiRecorderModel> voiceAiRecorderModelObj = VoiceAiRecorderModel().obs;

SelectionPopupModel? selectedDropDownValue;

@override void onClose() { super.onClose(); durationController.dispose(); } 
onSelected(dynamic value) { for (var element in voiceAiRecorderModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} voiceAiRecorderModelObj.value.dropdownItemList.refresh(); } 
 }
