import 'package:fast_ai/widgets/app_bar/custom_app_bar.dart';import 'package:fast_ai/widgets/app_bar/appbar_leading_iconbutton_four.dart';import 'package:fast_ai/widgets/app_bar/appbar_trailing_iconbutton_two.dart';import 'package:fast_ai/widgets/custom_icon_button.dart';import 'package:fast_ai/widgets/custom_drop_down.dart';import 'package:fast_ai/widgets/custom_elevated_button.dart';import 'package:fast_ai/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';import 'package:fast_ai/core/app_export.dart';import 'controller/video_ai_full_controller.dart';// ignore_for_file: must_be_immutable
class VideoAiFullScreen extends GetWidget<VideoAiFullController> {const VideoAiFullScreen({Key? key}) : super(key: key, );

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 20.v), Container(padding: EdgeInsets.symmetric(vertical: 30.v), decoration: AppDecoration.fillPrimaryContainer.copyWith(borderRadius: BorderRadiusStyle.roundedBorder40, ), child: Column(mainAxisSize: MainAxisSize.min, children: [_buildAppBar(), SizedBox(height: 21.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 30.h), child: Text("lbl_fash_vid".tr.toUpperCase(), style: theme.textTheme.displayMedium, ), ), ), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 30.h), child: Text("msg_convert_text_to2".tr, style: CustomTextStyles.titleLargeGray60002, ), ), ), SizedBox(height: 28.v), _buildMainVideo(), SizedBox(height: 14.v), _buildOptions(), SizedBox(height: 18.v), _buildTextFild(), SizedBox(height: 80.v), _buildButtons()], ), )], ), ), ), ); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 80.h, leading: AppbarLeadingIconbuttonFour(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 30.h), onTap: () {onTapArrowLeft();}, ), actions: [AppbarTrailingIconbuttonTwo(imagePath: ImageConstant.imgCut, margin: EdgeInsets.symmetric(horizontal: 30.h), )], ); } 
/// Section Widget
Widget _buildMainVideo() { return SizedBox(height: 200.v, width: 315.h, child: Stack(alignment: Alignment.bottomRight, children: [CustomImageView(imagePath: ImageConstant.imgRectangle996, height: 200.v, radius: BorderRadius.circular(20.h, ), alignment: Alignment.center, ), Align(alignment: Alignment.bottomRight, child: Padding(padding: EdgeInsets.only(left: 133.h, right: 14.h, bottom: 14.v, ), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomIconButton(height: 50.adaptSize, width: 50.adaptSize, padding: EdgeInsets.all(17.h), decoration: IconButtonStyleHelper.fillWhiteA, child: CustomImageView(imagePath: ImageConstant.imgContrastWhiteA700, ), ), SizedBox(height: 37.v), CustomIconButton(height: 24.adaptSize, width: 24.adaptSize, alignment: Alignment.centerRight, child: CustomImageView(imagePath: ImageConstant.imgScreenmirroring, ), )], ), ), )], ), ); } 
/// Section Widget
Widget _buildX() { return CustomElevatedButton(height: 50.v, width: 39.h, text: "lbl_1x".tr, margin: EdgeInsets.only(left: 11.h), buttonStyle: CustomButtonStyles.fillGray, ); } 
/// Section Widget
Widget _buildOptions() { return Padding(padding: EdgeInsets.symmetric(horizontal: 30.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Container(width: 139.h, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 9.v, ), decoration: AppDecoration.fillGray90004.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10, ), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(top: 1.v, bottom: 4.v, ), child: Text("lbl_bg_color".tr, style: theme.textTheme.titleLarge, ), ), CustomImageView(imagePath: ImageConstant.imgEllipse19, height: 30.adaptSize, width: 30.adaptSize, radius: BorderRadius.circular(15.h, ), margin: EdgeInsets.only(bottom: 2.v), )], ), ), Padding(padding: EdgeInsets.only(left: 11.h), child: CustomDropDown(width: 115.h, icon: Container(margin: EdgeInsets.fromLTRB(8.h, 20.v, 18.h, 20.v), child: CustomImageView(imagePath: ImageConstant.imgFavoriteLightGreen80010x12, height: 10.v, ), ), hintText: "lbl_english".tr, items: controller.videoAiFullModelObj.value.dropdownItemList!.value, borderDecoration: DropDownStyleHelper.fillGray, fillColor: appTheme.gray90004, ), ), _buildX()], ), ); } 
/// Section Widget
Widget _buildTextFild() { return Padding(padding: EdgeInsets.symmetric(horizontal: 30.h), child: CustomTextFormField(controller: controller.textFildController, hintText: "msg_this_is_adom_from".tr, hintStyle: CustomTextStyles.titleMedium16, textInputAction: TextInputAction.done, maxLines: 4, contentPadding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 21.v, ), borderDecoration: TextFormFieldStyleHelper.fillBlack, fillColor: appTheme.black90003, ), ); } 
/// Section Widget
Widget _buildConvert() { return CustomElevatedButton(width: 150.h, text: "lbl_convert".tr, ); } 
/// Section Widget
Widget _buildDownload() { return CustomElevatedButton(width: 150.h, text: "lbl_download".tr, margin: EdgeInsets.only(left: 15.h), buttonStyle: CustomButtonStyles.fillGreenATL15, ); } 
/// Section Widget
Widget _buildButtons() { return Padding(padding: EdgeInsets.symmetric(horizontal: 30.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildConvert(), _buildDownload()], ), ); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
