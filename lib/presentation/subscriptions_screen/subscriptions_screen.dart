import 'package:fast_ai/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:fast_ai/core/app_export.dart';
import 'controller/subscriptions_controller.dart';

// ignore_for_file: must_be_immutable
class SubscriptionsScreen extends GetWidget<SubscriptionsController> {
  const SubscriptionsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: SizeUtils.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle984,
                width: 375.h,
                radius: BorderRadius.circular(
                  40.h,
                ),
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30.h,
                    vertical: 10.v,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 50.v),
                      SizedBox(
                        height: 575.v,
                        width: 315.h,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    height: 130.adaptSize,
                                    width: 130.adaptSize,
                                    padding: EdgeInsets.all(41.h),
                                    decoration:
                                        AppDecoration.fillWhiteA700.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder65,
                                    ),
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgThumbsUp,
                                      height: 48.adaptSize,
                                      width: 48.adaptSize,
                                      alignment: Alignment.center,
                                    ),
                                  ),
                                  SizedBox(height: 11.v),
                                  Text(
                                    "lbl_go_premum".tr.toUpperCase(),
                                    style: theme.textTheme.displayMedium,
                                  ),
                                  Container(
                                    width: 276.h,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 19.h),
                                    child: Text(
                                      "msg_buy_our_premium".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles
                                          .titleLargeBluegray400
                                          .copyWith(
                                        height: 1.20,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 30.v),
                                  _buildMonthly(),
                                ],
                              ),
                            ),
                            _buildAll(),
                            _buildOffBestValue(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildGetTheDeal(),
      ),
    );
  }

  /// Section Widget
  Widget _buildSubscribe() {
    return CustomElevatedButton(
      height: 46.v,
      width: 97.h,
      text: "lbl_subscribe".tr,
      buttonStyle: CustomButtonStyles.fillGreenA,
      buttonTextStyle: theme.textTheme.titleSmall!,
    );
  }

  /// Section Widget
  Widget _buildMonthly() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillWhiteA7001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_monthly".tr.toUpperCase(),
                style: theme.textTheme.titleLarge,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "lbl_9_99".tr,
                      style: CustomTextStyles.displayMediumffffffff,
                    ),
                    TextSpan(
                      text: "lbl_month".tr,
                      style: CustomTextStyles.titleLargeffffffff,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
              Text(
                "msg_requiring_monthly".tr,
                style: CustomTextStyles.titleMedium16,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 13.v,
              bottom: 10.v,
            ),
            child: Column(
              children: [
                _buildSubscribe(),
                SizedBox(height: 6.v),
                Text(
                  "msg_7_days_free_trial".tr,
                  style: CustomTextStyles.labelLargeWhiteA700,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSubscribe1() {
    return CustomElevatedButton(
      height: 46.v,
      width: 97.h,
      text: "lbl_subscribe".tr,
      buttonStyle: CustomButtonStyles.fillGreenA,
      buttonTextStyle: theme.textTheme.titleSmall!,
    );
  }

  /// Section Widget
  Widget _buildAll() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(top: 449.v),
        padding: EdgeInsets.symmetric(vertical: 16.v),
        decoration: AppDecoration.fillWhiteA7001.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_yearly".tr.toUpperCase(),
                  style: theme.textTheme.titleLarge,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_6_99".tr,
                        style: CustomTextStyles.displayMediumffffffff,
                      ),
                      TextSpan(
                        text: "lbl_month".tr,
                        style: CustomTextStyles.titleLargeffffffff,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                Text(
                  "msg_requiring_yerarly".tr,
                  style: CustomTextStyles.titleMedium16,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 13.v,
                bottom: 10.v,
              ),
              child: Column(
                children: [
                  _buildSubscribe1(),
                  SizedBox(height: 6.v),
                  Text(
                    "msg_7_days_free_trial".tr,
                    style: CustomTextStyles.labelLargeWhiteA700,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOffBestValue() {
    return CustomElevatedButton(
      height: 32.v,
      width: 140.h,
      text: "msg_30_off_best_value".tr,
      margin: EdgeInsets.only(bottom: 111.v),
      buttonStyle: CustomButtonStyles.fillYellow,
      buttonTextStyle: CustomTextStyles.labelLargeBlack900,
      alignment: Alignment.bottomCenter,
    );
  }

  /// Section Widget
  Widget _buildGetTheDeal() {
    return CustomElevatedButton(
      text: "lbl_get_the_deal".tr,
      margin: EdgeInsets.only(
        left: 30.h,
        right: 30.h,
        bottom: 10.v,
      ),
    );
  }
}
