import '../../../core/app_export.dart';import '../models/forget_passwords_model.dart';import 'package:flutter/material.dart';/// A controller class for the ForgetPasswordsScreen.
///
/// This class manages the state of the ForgetPasswordsScreen, including the
/// current forgetPasswordsModelObj
class ForgetPasswordsController extends GetxController {TextEditingController emailController = TextEditingController();

Rx<ForgetPasswordsModel> forgetPasswordsModelObj = ForgetPasswordsModel().obs;

@override void onClose() { super.onClose(); emailController.dispose(); } 
 }
