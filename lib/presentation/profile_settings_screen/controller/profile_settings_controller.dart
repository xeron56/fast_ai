import '../../../core/app_export.dart';import '../models/profile_settings_model.dart';import 'package:flutter/material.dart';/// A controller class for the ProfileSettingsScreen.
///
/// This class manages the state of the ProfileSettingsScreen, including the
/// current profileSettingsModelObj
class ProfileSettingsController extends GetxController {TextEditingController fildController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController fildController1 = TextEditingController();

Rx<ProfileSettingsModel> profileSettingsModelObj = ProfileSettingsModel().obs;

@override void onClose() { super.onClose(); fildController.dispose(); emailController.dispose(); fildController1.dispose(); } 
 }
