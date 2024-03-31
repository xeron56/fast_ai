import '../models/explore_item_model.dart';
import '../controller/explore_controller.dart';
import 'package:fast_ai/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:fast_ai/core/app_export.dart';

// ignore: must_be_immutable
class ExploreItemWidget extends StatelessWidget {
  ExploreItemWidget(
    this.exploreItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ExploreItemModel exploreItemModelObj;

  var controller = Get.find<ExploreController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        decoration: AppDecoration.fillTeal.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder17,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 24.v),
                  child: Obx(
                    () => CustomIconButton(
                      height: 56.adaptSize,
                      width: 56.adaptSize,
                      padding: EdgeInsets.all(16.h),
                      decoration: IconButtonStyleHelper.fillBlackTL28,
                      child: CustomImageView(
                        imagePath: exploreItemModelObj.settings!.value,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 50.v,
                  width: 28.h,
                  margin: EdgeInsets.only(
                    left: 35.h,
                    bottom: 30.v,
                  ),
                  padding: EdgeInsets.all(2.h),
                  decoration: AppDecoration.fillBlack90003.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderBL14,
                  ),
                  child: CustomIconButton(
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    padding: EdgeInsets.all(6.h),
                    decoration: IconButtonStyleHelper.fillTealTL12,
                    alignment: Alignment.bottomCenter,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgTelevision,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.v),
            Obx(
              () => Text(
                exploreItemModelObj.voiceAI!.value,
                style: theme.textTheme.headlineLarge,
              ),
            ),
            SizedBox(height: 24.v),
            Obx(
              () => Text(
                exploreItemModelObj.convertTextToVoice!.value,
                style: CustomTextStyles.labelLargeBluegray60001,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
