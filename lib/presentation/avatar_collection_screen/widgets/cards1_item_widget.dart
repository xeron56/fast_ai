import '../models/cards1_item_model.dart';
import '../controller/avatar_collection_controller.dart';
import 'package:flutter/material.dart';
import 'package:fast_ai/core/app_export.dart';

// ignore: must_be_immutable
class Cards1ItemWidget extends StatelessWidget {
  Cards1ItemWidget(
    this.cards1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Cards1ItemModel cards1ItemModelObj;

  var controller = Get.find<AvatarCollectionController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        color: appTheme.gray50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Container(
          height: 160.v,
          width: 315.h,
          decoration: AppDecoration.fillGray50.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder20,
          ),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Obx(
                () => CustomImageView(
                  imagePath: cards1ItemModelObj.myAvatarSetOne!.value,
                  width: 102.h,
                  alignment: Alignment.topLeft,
                ),
              ),
              Obx(
                () => CustomImageView(
                  imagePath: cards1ItemModelObj.image!.value,
                  width: 103.h,
                  alignment: Alignment.topCenter,
                ),
              ),
              Obx(
                () => CustomImageView(
                  imagePath: cards1ItemModelObj.image1!.value,
                  width: 102.h,
                  alignment: Alignment.topRight,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.only(top: 90.v),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.h,
                    vertical: 12.v,
                  ),
                  decoration: AppDecoration.fillBlack90003.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Obx(
                            () => Text(
                              cards1ItemModelObj.myAvatarSetOne1!.value,
                              style: CustomTextStyles.titleLargeBold,
                            ),
                          ),
                          Obx(
                            () => Text(
                              cards1ItemModelObj.avatarsCounter!.value,
                              style: CustomTextStyles.titleMediumBluegray400,
                            ),
                          ),
                        ],
                      ),
                      Opacity(
                        opacity: 0.7,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgBin,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          margin: EdgeInsets.symmetric(vertical: 10.v),
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
