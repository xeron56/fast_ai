import 'package:flutter/material.dart';
import 'package:fast_ai/core/app_export.dart';
import 'controller/change_voice_controller.dart';

class ChangeVoiceBottomsheet extends StatelessWidget {
  ChangeVoiceBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  ChangeVoiceController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.fillTeal90004.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder40,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 6.v,
              width: 30.h,
              decoration: BoxDecoration(
                color: appTheme.blueGray800,
                borderRadius: BorderRadius.circular(
                  3.h,
                ),
              ),
            ),
          ),
          SizedBox(height: 29.v),
          Text(
            "msg_change_the_voice".tr.toUpperCase(),
            style: CustomTextStyles.headlineLarge32,
          ),
          SizedBox(height: 15.v),
          Text(
            "lbl_sam_male".tr,
            style: CustomTextStyles.headlineSmallSemiBold,
          ),
          SizedBox(height: 13.v),
          Divider(
            color: appTheme.teal90003,
          ),
          SizedBox(height: 12.v),
          Text(
            "lbl_sarah_female".tr,
            style: CustomTextStyles.headlineSmallSemiBold,
          ),
          SizedBox(height: 13.v),
          Divider(
            color: appTheme.teal90003,
          ),
          SizedBox(height: 12.v),
          Text(
            "lbl_rock_male".tr,
            style: CustomTextStyles.headlineSmallSemiBold,
          ),
          SizedBox(height: 13.v),
          Divider(
            color: appTheme.teal90003,
          ),
          SizedBox(height: 7.v),
        ],
      ),
    );
  }
}
