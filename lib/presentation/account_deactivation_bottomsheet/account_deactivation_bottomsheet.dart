import 'package:fast_ai/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:fast_ai/core/app_export.dart';
import 'controller/account_deactivation_controller.dart';

class AccountDeactivationBottomsheet extends StatelessWidget {
  AccountDeactivationBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  AccountDeactivationController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.fillBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder40,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 6.v,
            width: 30.h,
            decoration: BoxDecoration(
              color: appTheme.blueGray900,
              borderRadius: BorderRadius.circular(
                3.h,
              ),
            ),
          ),
          SizedBox(height: 31.v),
          Container(
            width: 286.h,
            margin: EdgeInsets.only(
              left: 14.h,
              right: 13.h,
            ),
            child: Text(
              "msg_are_you_sure_to".tr.toUpperCase(),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.headlineLarge32,
            ),
          ),
          Container(
            width: 245.h,
            margin: EdgeInsets.symmetric(horizontal: 34.h),
            child: Text(
              "msg_warning_if_you".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleMediumBluegray400_1.copyWith(
                height: 1.22,
              ),
            ),
          ),
          SizedBox(height: 30.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: CustomElevatedButton(
                  text: "lbl_yes_i_m_sure".tr,
                  margin: EdgeInsets.only(right: 7.h),
                  buttonStyle: CustomButtonStyles.fillErrorContainer,
                ),
              ),
              Expanded(
                child: CustomElevatedButton(
                  text: "lbl_no_i_m_not".tr,
                  margin: EdgeInsets.only(left: 7.h),
                ),
              ),
            ],
          ),
          SizedBox(height: 12.v),
        ],
      ),
    );
  }
}
