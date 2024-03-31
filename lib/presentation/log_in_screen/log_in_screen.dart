import 'package:fast_ai/core/utils/validation_functions.dart';import 'package:fast_ai/widgets/custom_text_form_field.dart';import 'package:fast_ai/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:fast_ai/core/app_export.dart';import 'controller/log_in_controller.dart';import 'package:fast_ai/domain/googleauth/google_auth_helper.dart';// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class LogInScreen extends GetWidget<LogInController> {LogInScreen({Key? key}) : super(key: key, );

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom, ), child: Form(key: _formKey, child: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 20.v), Container(padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 28.v, ), decoration: AppDecoration.fillBlack.copyWith(borderRadius: BorderRadiusStyle.roundedBorder40, ), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [Align(alignment: Alignment.centerRight, child: RichText(text: TextSpan(children: [TextSpan(text: "msg_don_t_have_account2".tr, style: CustomTextStyles.titleMediumff788495, ), TextSpan(text: "lbl_sign_up".tr, style: CustomTextStyles.titleMediumff806dff, )], ), textAlign: TextAlign.left, ), ), SizedBox(height: 56.v), Align(alignment: Alignment.centerLeft, child: Text("lbl_log_in".tr.toUpperCase(), style: theme.textTheme.displayMedium, ), ), Align(alignment: Alignment.centerLeft, child: Text("msg_enter_details_to".tr, style: CustomTextStyles.titleLargeBluegray400, ), ), SizedBox(height: 26.v), _buildEmail(), SizedBox(height: 20.v), _buildPassword(), SizedBox(height: 15.v), Align(alignment: Alignment.centerRight, child: Text("msg_forget_password".tr, style: CustomTextStyles.titleMediumGreenA70001, ), ), SizedBox(height: 39.v), _buildLogIn(), SizedBox(height: 88.v), _buildOr(), SizedBox(height: 28.v), _buildSignUpWithGoogle(), SizedBox(height: 14.v), _buildSignUpWithApple()], ), )], ), ), ), ), ), ), ); } 
/// Section Widget
Widget _buildEmail() { return CustomTextFormField(controller: controller.emailController, hintText: "lbl_email_address".tr, hintStyle: CustomTextStyles.titleMediumBluegray400_1, textInputType: TextInputType.emailAddress, validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "err_msg_please_enter_valid_email".tr;} return null;}, ); } 
/// Section Widget
Widget _buildPassword() { return Obx(() => CustomTextFormField(controller: controller.passwordController, hintText: "lbl_password".tr, hintStyle: CustomTextStyles.titleMediumBluegray400_1, textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, suffix: InkWell(onTap: () {controller.isShowPassword.value = !controller.isShowPassword.value;}, child: Container(margin: EdgeInsets.fromLTRB(30.h, 17.v, 20.h, 17.v), child: CustomImageView(imagePath: ImageConstant.imgEye, height: 24.adaptSize, width: 24.adaptSize, ), ), ), suffixConstraints: BoxConstraints(maxHeight: 58.v, ), validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "err_msg_please_enter_valid_password".tr;} return null;}, obscureText: controller.isShowPassword.value, contentPadding: EdgeInsets.only(left: 20.h, top: 17.v, bottom: 17.v, ), ), ); } 
/// Section Widget
Widget _buildLogIn() { return CustomElevatedButton(text: "lbl_log_in".tr, ); } 
/// Section Widget
Widget _buildOr() { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 11.v, bottom: 10.v, ), child: SizedBox(width: 142.h, child: Divider(), ), ), Text("lbl_or".tr, style: theme.textTheme.titleMedium, ), Padding(padding: EdgeInsets.only(top: 11.v, bottom: 10.v, ), child: SizedBox(width: 141.h, child: Divider(), ), )], ); } 
/// Section Widget
Widget _buildSignUpWithGoogle() { return CustomElevatedButton(text: "msg_sign_up_with_google".tr, leftIcon: Container(margin: EdgeInsets.only(right: 12.h), child: CustomImageView(imagePath: ImageConstant.imgGoogle, height: 20.adaptSize, width: 20.adaptSize, ), ), buttonStyle: CustomButtonStyles.fillOnSecondaryContainer, buttonTextStyle: theme.textTheme.titleMedium!, onPressed: () {onTapSignUpWithGoogle();}, ); } 
/// Section Widget
Widget _buildSignUpWithApple() { return CustomElevatedButton(text: "msg_sign_up_with_apple".tr, leftIcon: Container(margin: EdgeInsets.only(right: 12.h), child: CustomImageView(imagePath: ImageConstant.imgApple, height: 20.adaptSize, width: 20.adaptSize, ), ), buttonStyle: CustomButtonStyles.fillOnSecondaryContainer, buttonTextStyle: theme.textTheme.titleMedium!, ); } 
onTapSignUpWithGoogle() async  {         await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
          if(googleUser!=null){
            //TODO Actions to be performed after signin
          } else {
            Get.snackbar('Error', 'user data is empty');
          }
        }).catchError((onError) {
            Get.snackbar('Error', onError.toString());
        });
         } 
 }
