import '../../../core/app_export.dart';import '../models/reset_password_model.dart';import 'package:flutter/material.dart';/// A controller class for the ResetPasswordScreen.
///
/// This class manages the state of the ResetPasswordScreen, including the
/// current resetPasswordModelObj
class ResetPasswordController extends GetxController {TextEditingController passwordController = TextEditingController();

TextEditingController passwordController1 = TextEditingController();

Rx<ResetPasswordModel> resetPasswordModelObj = ResetPasswordModel().obs;

Rx<bool> isShowPassword = true.obs;

Rx<bool> isShowPassword1 = true.obs;

@override void onClose() { super.onClose(); passwordController.dispose(); passwordController1.dispose(); } 
 }
