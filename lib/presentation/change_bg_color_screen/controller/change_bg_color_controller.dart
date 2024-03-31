import '../../../core/app_export.dart';import '../models/change_bg_color_model.dart';import 'package:sms_autofill/sms_autofill.dart';import 'package:flutter/material.dart';/// A controller class for the ChangeBgColorScreen.
///
/// This class manages the state of the ChangeBgColorScreen, including the
/// current changeBgColorModelObj
class ChangeBgColorController extends GetxController with  CodeAutoFill {Rx<TextEditingController> otpController = TextEditingController().obs;

Rx<ChangeBgColorModel> changeBgColorModelObj = ChangeBgColorModel().obs;

SelectionPopupModel? selectedDropDownValue;

@override void codeUpdated() { otpController.value.text = code ?? ''; } 
@override void onInit() { super.onInit(); listenForCode(); } 
onSelected(dynamic value) { for (var element in changeBgColorModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} changeBgColorModelObj.value.dropdownItemList.refresh(); } 
 }
