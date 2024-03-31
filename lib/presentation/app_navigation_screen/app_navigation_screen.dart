import '../change_voice_bottomsheet/change_voice_bottomsheet.dart';
import '../change_voice_bottomsheet/controller/change_voice_controller.dart';
import '../account_deactivation_bottomsheet/account_deactivation_bottomsheet.dart';
import '../account_deactivation_bottomsheet/controller/account_deactivation_controller.dart';
import 'package:flutter/material.dart';
import 'package:fast_ai/core/app_export.dart';
import 'controller/app_navigation_controller.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "Splash".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Log In".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.logInScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign Up".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Forget Passwords".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.forgetPasswordsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Verification".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.verificationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Reset Password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.resetPasswordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Subscriptions".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.subscriptionsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Home - Container".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homeContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Voice Ai".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.voiceAiScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Voice Ai Recorder".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.voiceAiRecorderScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Voice Type".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.voiceTypeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Change Voice - BottomSheet".tr,
                          onTapScreenTitle: () => onTapBottomSheetTitle(
                              context,
                              ChangeVoiceBottomsheet(
                                  Get.put(ChangeVoiceController()))),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Text Ai - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.textAiTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Content Rewrite".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.contentRewriteScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Text Ai Product".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.textAiProductScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Product Description".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.productDescriptionScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Text Ai Blog".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.textAiBlogScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Blog Idea".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.blogIdeaScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Video Ai".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.videoAiScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Video Ai Full Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.videoAiFullScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Change BG Color".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.changeBgColorScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Characters".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.charactersScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Image Ai".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.imageAiScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Image Ai Uploaded".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.imageAiUploadedScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Image Converted".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.imageConvertedScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Avatar Collection".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.avatarCollectionScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Explore".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.exploreScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Search".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.searchScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Menu".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.menuScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Profile Settings".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profileSettingsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "My Subscription".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.mySubscriptionScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Settings".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.settingsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Notification Settings".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.notificationSettingsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Language Settings".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.languageSettingsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Terms & Condition".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.termsConditionScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Account Deactivation - BottomSheet".tr,
                          onTapScreenTitle: () => onTapBottomSheetTitle(
                              context,
                              AccountDeactivationBottomsheet(
                                  Get.put(AccountDeactivationController()))),
                        ),
                        _buildScreenTitle(
                          screenTitle: "404 Error".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.errorScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common click event for bottomsheet
  void onTapBottomSheetTitle(
    BuildContext context,
    Widget className,
  ) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return className;
      },
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle?.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
