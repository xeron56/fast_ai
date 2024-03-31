import '../../../core/app_export.dart';import '../models/video_ai_full_model.dart';import 'package:flutter/material.dart';/// A controller class for the VideoAiFullScreen.
///
/// This class manages the state of the VideoAiFullScreen, including the
/// current videoAiFullModelObj
class VideoAiFullController extends GetxController {TextEditingController textFildController = TextEditingController();

Rx<VideoAiFullModel> videoAiFullModelObj = VideoAiFullModel().obs;

SelectionPopupModel? selectedDropDownValue;

@override void onClose() { super.onClose(); textFildController.dispose(); } 
onSelected(dynamic value) { for (var element in videoAiFullModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} videoAiFullModelObj.value.dropdownItemList.refresh(); } 
 }
