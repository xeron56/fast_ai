import 'package:fast_ai/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:fast_ai/core/app_export.dart';

// ignore: must_be_immutable
class AppbarTitleButton extends StatelessWidget {
  AppbarTitleButton({
    Key? key,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomElevatedButton(
          height: 50.v,
          width: 200.h,
          text: "lbl_premium_member".tr,
          rightIcon: Container(
            margin: EdgeInsets.only(left: 24.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgThumbsUp,
              height: 20.adaptSize,
              width: 20.adaptSize,
            ),
          ),
          buttonStyle: CustomButtonStyles.fillBlack,
          buttonTextStyle: CustomTextStyles.titleMedium16,
        ),
      ),
    );
  }
}
