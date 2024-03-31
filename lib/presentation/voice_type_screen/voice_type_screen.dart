import 'package:fast_ai/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:fast_ai/core/app_export.dart';
import 'controller/voice_type_controller.dart';

// ignore_for_file: must_be_immutable
class VoiceTypeScreen extends GetWidget<VoiceTypeController> {
  const VoiceTypeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 20.v),
              Expanded(
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(
                    horizontal: 30.h,
                    vertical: 22.v,
                  ),
                  decoration: AppDecoration.fillTeal90004.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder40,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 7.v),
                      CustomIconButton(
                        height: 50.adaptSize,
                        width: 50.adaptSize,
                        padding: EdgeInsets.all(14.h),
                        decoration: IconButtonStyleHelper.fillTealTL251,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgX,
                        ),
                      ),
                      SizedBox(height: 21.v),
                      Text(
                        "lbl_speake_now".tr.toUpperCase(),
                        style: theme.textTheme.displayMedium,
                      ),
                      SizedBox(height: 23.v),
                      Container(
                        width: 254.h,
                        margin: EdgeInsets.only(right: 60.h),
                        child: Text(
                          "msg_hi_my_name_is_sarah".tr,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.titleLarge!.copyWith(
                            height: 1.20,
                          ),
                        ),
                      ),
                      Spacer(),
                      CustomIconButton(
                        height: 100.adaptSize,
                        width: 100.adaptSize,
                        padding: EdgeInsets.all(28.h),
                        decoration: IconButtonStyleHelper.fillTealTL50,
                        alignment: Alignment.center,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgMenuWhiteA700,
                        ),
                      ),
                      SizedBox(height: 16.v),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "msg_tap_the_microphone".tr,
                          style: CustomTextStyles.titleMedium16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
