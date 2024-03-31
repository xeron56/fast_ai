import 'package:flutter/material.dart';
import 'package:fast_ai/core/app_export.dart';
import 'controller/splash_controller.dart';

// ignore_for_file: must_be_immutable
class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: appTheme.whiteA700,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgSplash,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "lbl_fast_ai".tr,
                  style: theme.textTheme.displayLarge,
                ),
                SizedBox(height: 2.v),
                Text(
                  "msg_all_ai_tools_in".tr,
                  style: CustomTextStyles.headlineMediumWhiteA700,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
