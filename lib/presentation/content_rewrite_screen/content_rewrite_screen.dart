import 'package:fast_ai/widgets/app_bar/custom_app_bar.dart';import 'package:fast_ai/widgets/app_bar/appbar_leading_iconbutton_three.dart';import 'package:fast_ai/widgets/app_bar/appbar_trailing_iconbutton_one.dart';import 'package:fast_ai/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:fast_ai/core/app_export.dart';import 'controller/content_rewrite_controller.dart';// ignore_for_file: must_be_immutable
class ContentRewriteScreen extends GetWidget<ContentRewriteController> {const ContentRewriteScreen({Key? key}) : super(key: key, );

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 20.v), Container(padding: EdgeInsets.symmetric(vertical: 30.v), decoration: AppDecoration.fillBlack90002.copyWith(borderRadius: BorderRadiusStyle.roundedBorder40, ), child: Column(mainAxisSize: MainAxisSize.min, children: [_buildAppBar(), SizedBox(height: 25.v), Align(alignment: Alignment.centerLeft, child: Container(width: 232.h, margin: EdgeInsets.only(left: 30.h), child: Text("msg_03_rewrite_contents".tr.toUpperCase(), maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.displayMedium!.copyWith(height: 1.04, ), ), ), ), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 30.h), child: Text("msg_you_can_convert".tr, style: CustomTextStyles.titleLargeGray60005, ), ), ), SizedBox(height: 26.v), Padding(padding: EdgeInsets.symmetric(horizontal: 30.h), child: _buildTextTwo(helloMyNameIs: "msg_hi_i_m_sarah_i_m".tr, ), ), SizedBox(height: 20.v), Padding(padding: EdgeInsets.symmetric(horizontal: 30.h), child: _buildTextTwo(helloMyNameIs: "msg_hello_my_name_is".tr, ), ), SizedBox(height: 20.v), Padding(padding: EdgeInsets.symmetric(horizontal: 30.h), child: _buildTextTwo(helloMyNameIs: "msg_hello_my_name_is2".tr, ), ), SizedBox(height: 64.v), CustomElevatedButton(text: "lbl_make_more".tr, margin: EdgeInsets.symmetric(horizontal: 30.h), )], ), )], ), ), ), ); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 80.h, leading: AppbarLeadingIconbuttonThree(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 30.h), onTap: () {onTapArrowLeft();}, ), actions: [AppbarTrailingIconbuttonOne(imagePath: ImageConstant.imgCut, margin: EdgeInsets.symmetric(horizontal: 30.h), )], ); } 
/// Common widget
Widget _buildTextTwo({required String helloMyNameIs}) { return Container(width: 315.h, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 12.v, ), decoration: AppDecoration.fillBlack90003.copyWith(borderRadius: BorderRadiusStyle.roundedBorder17, ), child: Column(mainAxisSize: MainAxisSize.min, children: [SizedBox(height: 5.v), Container(width: 273.h, margin: EdgeInsets.only(left: 4.h, right: 5.h, ), child: Text(helloMyNameIs, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.titleMedium16.copyWith(color: appTheme.whiteA700, height: 1.50, ), ), ), SizedBox(height: 6.v), CustomImageView(imagePath: ImageConstant.imgUpload, height: 20.adaptSize, width: 20.adaptSize, alignment: Alignment.centerRight, )], ), ); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
