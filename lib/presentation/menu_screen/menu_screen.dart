import 'package:fast_ai/widgets/app_bar/custom_app_bar.dart';
import 'package:fast_ai/widgets/app_bar/appbar_leading_iconbutton_six.dart';
import 'package:fast_ai/widgets/app_bar/appbar_title.dart';
import 'package:fast_ai/widgets/app_bar/appbar_image.dart';
import 'package:flutter/material.dart' hide MenuController;
import 'package:fast_ai/core/app_export.dart';
import 'controller/menu_controller.dart';

// ignore_for_file: must_be_immutable
class MenuScreen extends GetWidget<MenuController> {
  const MenuScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: _buildAppBar(),
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          padding: EdgeInsets.only(top: 56.v),
          decoration: BoxDecoration(
            color: appTheme.whiteA700,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgSplash,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 30.h,
              vertical: 28.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_adom_shafi".tr.toUpperCase(),
                  style: theme.textTheme.displayMedium,
                ),
                Text(
                  "msg_adomuihut_gmail_com".tr,
                  style: CustomTextStyles.titleMediumOnPrimaryContainer,
                ),
                SizedBox(height: 41.v),
                _buildMySubscription(
                  refresh: ImageConstant.imgLock,
                  mySubscription: "lbl_edit_profile".tr,
                ),
                SizedBox(height: 30.v),
                _buildMySubscription(
                  refresh: ImageConstant.imgRefresh,
                  mySubscription: "lbl_my_subscription".tr,
                ),
                SizedBox(height: 30.v),
                _buildMySubscription(
                  refresh: ImageConstant.imgSettingsWhiteA70028x28,
                  mySubscription: "lbl_app_settings".tr,
                ),
                SizedBox(height: 30.v),
                _buildMySubscription(
                  refresh: ImageConstant.imgVideoCamera,
                  mySubscription: "msg_terms_condition".tr,
                ),
                SizedBox(height: 50.v),
                _buildMySubscription(
                  refresh: ImageConstant.imgArrowDown,
                  mySubscription: "lbl_log_out".tr,
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 103.v,
      leadingWidth: 80.h,
      leading: AppbarLeadingIconbuttonSix(
        imagePath: ImageConstant.imgX,
        margin: EdgeInsets.only(
          left: 30.h,
          top: 3.v,
          bottom: 3.v,
        ),
      ),
      title: Container(
        margin: EdgeInsets.only(left: 65.h),
        padding: EdgeInsets.all(2.h),
        decoration: AppDecoration.fillBlack90003.copyWith(
          borderRadius: BorderRadiusStyle.circleBorder23,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            AppbarTitle(
              text: "lbl_premium_member".tr,
              margin: EdgeInsets.only(
                left: 18.h,
                top: 14.v,
                bottom: 13.v,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 11.h),
              padding: EdgeInsets.all(13.h),
              decoration: AppDecoration.fillGreenA.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder23,
              ),
              child: AppbarImage(
                imagePath: ImageConstant.imgThumbsUp,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildMySubscription({
    required String refresh,
    required String mySubscription,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: refresh,
          height: 28.adaptSize,
          width: 28.adaptSize,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 3.v,
          ),
          child: Text(
            mySubscription,
            style: theme.textTheme.titleMedium!.copyWith(
              color: appTheme.whiteA700,
            ),
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 22.adaptSize,
          width: 22.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 3.v),
        ),
      ],
    );
  }
}
