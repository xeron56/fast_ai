import 'package:fast_ai/widgets/app_bar/custom_app_bar.dart';import 'package:fast_ai/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:flutter/material.dart';import 'package:fast_ai/core/app_export.dart';import 'controller/error_controller.dart';// ignore_for_file: must_be_immutable
class ErrorScreen extends GetWidget<ErrorController> {const ErrorScreen({Key? key}) : super(key: key, );

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 20.v), Container(padding: EdgeInsets.symmetric(vertical: 30.v), decoration: AppDecoration.fillOnErrorContainer.copyWith(borderRadius: BorderRadiusStyle.roundedBorder40, ), child: Column(mainAxisSize: MainAxisSize.min, children: [_buildAppBar(), SizedBox(height: 80.v), CustomImageView(imagePath: ImageConstant.imgAi, width: 241.h, ), SizedBox(height: 29.v), Container(width: 293.h, margin: EdgeInsets.only(left: 42.h, right: 38.h, ), child: Text("msg_opps_looks".tr.toUpperCase(), maxLines: 3, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: theme.textTheme.headlineMedium!.copyWith(height: 1.21, ), ), ), SizedBox(height: 68.v), Text("lbl_try_again".tr, style: CustomTextStyles.headlineMediumPrimary, ), SizedBox(height: 35.v)], ), )], ), ), ), ); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: double.maxFinite, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 30.h, right: 295.h, ), onTap: () {onTapArrowLeft();}, ), ); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
