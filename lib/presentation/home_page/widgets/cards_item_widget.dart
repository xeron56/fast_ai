import '../models/cards_item_model.dart';
import '../controller/home_controller.dart';
import 'package:fast_ai/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:fast_ai/core/app_export.dart';

// ignore: must_be_immutable
class CardsItemWidget extends StatelessWidget {
  CardsItemWidget(
    this.cardsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CardsItemModel cardsItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250.h,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        color: appTheme.teal90001,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.roundedBorder30,
        ),
        child: Container(
          height: 282.v,
          width: 250.h,
          padding: EdgeInsets.symmetric(horizontal: 24.h),
          decoration: AppDecoration.fillTeal.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder30,
          ),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(right: 27.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 90.adaptSize,
                        width: 90.adaptSize,
                        padding: EdgeInsets.all(27.h),
                        decoration: AppDecoration.fillBlack900031.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder45,
                        ),
                        child: Obx(
                          () => CustomImageView(
                            imagePath: cardsItemModelObj.settings!.value,
                            height: 36.adaptSize,
                            width: 36.adaptSize,
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                      SizedBox(height: 27.v),
                      Obx(
                        () => Text(
                          cardsItemModelObj.voiceAI!.value,
                          style: CustomTextStyles.displayMedium50,
                        ),
                      ),
                      Obx(
                        () => Text(
                          cardsItemModelObj.convertTextToVoice!.value,
                          style: CustomTextStyles.titleLargeBluegray60001,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 87.v,
                  width: 46.h,
                  margin: EdgeInsets.only(right: 6.h),
                  padding: EdgeInsets.all(2.h),
                  decoration: AppDecoration.fillBlack90003.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderBL23,
                  ),
                  child: Obx(
                    () => CustomIconButton(
                      height: 42.adaptSize,
                      width: 42.adaptSize,
                      padding: EdgeInsets.all(11.h),
                      decoration: IconButtonStyleHelper.fillTeal,
                      alignment: Alignment.bottomCenter,
                      child: CustomImageView(
                        imagePath: cardsItemModelObj.television!.value,
                      ),
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
}
