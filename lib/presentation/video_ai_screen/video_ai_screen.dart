import 'package:fast_ai/widgets/app_bar/custom_app_bar.dart';import 'package:fast_ai/widgets/app_bar/appbar_leading_iconbutton_four.dart';import 'package:fast_ai/widgets/app_bar/appbar_trailing_iconbutton_two.dart';import 'package:fast_ai/widgets/custom_icon_button.dart';import 'widgets/videoai_item_widget.dart';import 'models/videoai_item_model.dart';import 'package:fast_ai/widgets/custom_elevated_button.dart';import 'package:fast_ai/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';import 'package:fast_ai/core/app_export.dart';import 'controller/video_ai_controller.dart';// ignore_for_file: must_be_immutable
class VideoAiScreen extends GetWidget<VideoAiController> {const VideoAiScreen({Key? key}) : super(key: key, );

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 20.v), Card(clipBehavior: Clip.antiAlias, elevation: 0, color: theme.colorScheme.primaryContainer, shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.roundedBorder40, ), child: Container(height: 792.v, width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 29.h, vertical: 30.v, ), decoration: AppDecoration.fillPrimaryContainer.copyWith(borderRadius: BorderRadiusStyle.roundedBorder40, ), child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.topRight, child: Container(height: 64.v, width: 60.h, margin: EdgeInsets.only(top: 81.v, right: 2.h, ), child: Stack(alignment: Alignment.bottomLeft, children: [Align(alignment: Alignment.bottomLeft, child: Padding(padding: EdgeInsets.only(left: 1.h, right: 32.h, ), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_c".tr, style: theme.textTheme.labelSmall, ), Padding(padding: EdgeInsets.only(left: 3.h), child: Text("lbl_t".tr, style: theme.textTheme.labelSmall, ), ), Align(alignment: Alignment.center, child: Text("lbl_a".tr, style: theme.textTheme.labelSmall, ), ), Align(alignment: Alignment.centerRight, child: Text("lbl_w".tr, style: theme.textTheme.labelSmall, ), )], ), ), ), Align(alignment: Alignment.bottomLeft, child: Padding(padding: EdgeInsets.only(bottom: 24.v), child: Text("lbl_h".tr, style: theme.textTheme.labelSmall, ), ), ), Align(alignment: Alignment.center, child: SizedBox(height: 64.v, width: 59.h, child: Stack(alignment: Alignment.topLeft, children: [Align(alignment: Alignment.topLeft, child: Padding(padding: EdgeInsets.only(top: 17.v), child: Text("lbl_v".tr, style: theme.textTheme.labelSmall, ), ), ), Align(alignment: Alignment.topLeft, child: Padding(padding: EdgeInsets.only(left: 3.h, top: 12.v, ), child: Text("lbl_i".tr, style: theme.textTheme.labelSmall, ), ), ), Align(alignment: Alignment.topLeft, child: Padding(padding: EdgeInsets.only(left: 6.h, top: 7.v, ), child: Text("lbl_d".tr, style: theme.textTheme.labelSmall, ), ), ), Align(alignment: Alignment.topLeft, child: Padding(padding: EdgeInsets.only(left: 12.h, top: 2.v, ), child: Text("lbl_e".tr, style: theme.textTheme.labelSmall, ), ), ), Align(alignment: Alignment.topLeft, child: Padding(padding: EdgeInsets.only(left: 19.h), child: Text("lbl_o".tr, style: theme.textTheme.labelSmall, ), ), ), Align(alignment: Alignment.topRight, child: Padding(padding: EdgeInsets.only(left: 31.h, right: 5.h, ), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.end, children: [Align(alignment: Alignment.centerLeft, child: Text("lbl_w".tr, style: theme.textTheme.labelSmall, ), ), Padding(padding: EdgeInsets.only(right: 5.h), child: Text("lbl_a".tr, style: theme.textTheme.labelSmall, ), ), Text("lbl_t".tr, style: theme.textTheme.labelSmall, )], ), ), ), Align(alignment: Alignment.topRight, child: Padding(padding: EdgeInsets.only(left: 50.h, top: 17.v, ), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_c".tr, style: theme.textTheme.labelSmall, ), Align(alignment: Alignment.centerRight, child: Text("lbl_h".tr, style: theme.textTheme.labelSmall, ), )], ), ), ), Align(alignment: Alignment.bottomRight, child: Padding(padding: EdgeInsets.only(bottom: 17.v), child: Text("lbl_v".tr, style: theme.textTheme.labelSmall, ), ), ), Align(alignment: Alignment.bottomRight, child: Padding(padding: EdgeInsets.only(right: 4.h, bottom: 12.v, ), child: Text("lbl_i".tr, style: theme.textTheme.labelSmall, ), ), ), Align(alignment: Alignment.bottomRight, child: Padding(padding: EdgeInsets.only(right: 7.h, bottom: 7.v, ), child: Text("lbl_d".tr, style: theme.textTheme.labelSmall, ), ), ), Align(alignment: Alignment.bottomRight, child: Padding(padding: EdgeInsets.only(right: 13.h, bottom: 2.v, ), child: Text("lbl_e".tr, style: theme.textTheme.labelSmall, ), ), ), Align(alignment: Alignment.bottomRight, child: Padding(padding: EdgeInsets.only(left: 23.h, right: 20.h, ), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgFavorite, width: 13.h, ), SizedBox(height: 10.v), Align(alignment: Alignment.centerRight, child: Text("lbl_o".tr, style: theme.textTheme.labelSmall, ), )], ), ), )], ), ), )], ), ), ), Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.only(left: 1.h), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [_buildAppBar(), SizedBox(height: 21.v), Text("lbl_fash_vid".tr.toUpperCase(), style: theme.textTheme.displayMedium, ), Text("msg_convert_text_to2".tr, style: CustomTextStyles.titleLargeGray60001, ), SizedBox(height: 28.v), _buildMainVideo(), SizedBox(height: 15.v), _buildVideoAi(), SizedBox(height: 19.v), _buildOptions(), SizedBox(height: 20.v), _buildTypeyourtexthere(), SizedBox(height: 18.v), _buildButtons()], ), ), )], ), ), )], ), ), ), ); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 80.h, leading: AppbarLeadingIconbuttonFour(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 30.h), onTap: () {onTapArrowLeft();}, ), actions: [AppbarTrailingIconbuttonTwo(imagePath: ImageConstant.imgCut, margin: EdgeInsets.symmetric(horizontal: 30.h), )], ); } 
/// Section Widget
Widget _buildMainVideo() { return SizedBox(height: 200.v, width: 315.h, child: Stack(alignment: Alignment.bottomRight, children: [CustomImageView(imagePath: ImageConstant.imgRectangle996, height: 200.v, radius: BorderRadius.circular(20.h, ), alignment: Alignment.center, ), Align(alignment: Alignment.bottomRight, child: Padding(padding: EdgeInsets.only(left: 132.h, right: 14.h, bottom: 14.v, ), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomIconButton(height: 50.adaptSize, width: 50.adaptSize, padding: EdgeInsets.all(17.h), decoration: IconButtonStyleHelper.fillWhiteA, child: CustomImageView(imagePath: ImageConstant.imgContrastWhiteA700, ), ), SizedBox(height: 37.v), CustomIconButton(height: 24.adaptSize, width: 24.adaptSize, alignment: Alignment.centerRight, child: CustomImageView(imagePath: ImageConstant.imgScreenmirroring, ), )], ), ), )], ), ); } 
/// Section Widget
Widget _buildVideoAi() { return SizedBox(height: 40.v, child: Obx(() => ListView.separated(scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(width: 6.h, );}, itemCount: controller.videoAiModelObj.value.videoaiItemList.value.length, itemBuilder: (context, index) {VideoaiItemModel model = controller.videoAiModelObj.value.videoaiItemList.value[index]; return VideoaiItemWidget(model, );}, ), ), ); } 
/// Section Widget
Widget _buildEnglish() { return CustomElevatedButton(height: 50.v, width: 115.h, text: "lbl_english".tr, margin: EdgeInsets.only(left: 11.h), rightIcon: Container(margin: EdgeInsets.only(left: 8.h), child: CustomImageView(imagePath: ImageConstant.imgFavoriteLightGreen800, height: 10.v, ), ), buttonStyle: CustomButtonStyles.fillGray, ); } 
/// Section Widget
Widget _buildX() { return CustomElevatedButton(height: 50.v, width: 39.h, text: "lbl_1x".tr, margin: EdgeInsets.only(left: 11.h), buttonStyle: CustomButtonStyles.fillGray, ); } 
/// Section Widget
Widget _buildOptions() { return Row(children: [Container(width: 139.h, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 9.v, ), decoration: AppDecoration.fillGray90004.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10, ), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(top: 1.v, bottom: 4.v, ), child: Text("lbl_bg_color".tr, style: theme.textTheme.titleLarge, ), ), CustomImageView(imagePath: ImageConstant.imgEllipse19, height: 30.adaptSize, width: 30.adaptSize, radius: BorderRadius.circular(15.h, ), margin: EdgeInsets.only(bottom: 2.v), )], ), ), _buildEnglish(), _buildX()], ); } 
/// Section Widget
Widget _buildTypeyourtexthere() { return CustomTextFormField(controller: controller.typeyourtexthereController, hintText: "msg_type_your_text_here".tr, textInputAction: TextInputAction.done, maxLines: 5, contentPadding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 22.v, ), borderDecoration: TextFormFieldStyleHelper.fillBlack, fillColor: appTheme.black90003, ); } 
/// Section Widget
Widget _buildConvert() { return CustomElevatedButton(width: 150.h, text: "lbl_convert".tr, ); } 
/// Section Widget
Widget _buildDownload() { return Opacity(opacity: 0.3, child: CustomElevatedButton(width: 150.h, text: "lbl_download".tr, margin: EdgeInsets.only(left: 15.h), buttonStyle: CustomButtonStyles.fillGreenATL151, ), ); } 
/// Section Widget
Widget _buildButtons() { return Row(children: [_buildConvert(), _buildDownload()], ); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
