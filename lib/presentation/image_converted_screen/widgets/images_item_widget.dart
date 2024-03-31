import '../models/images_item_model.dart';
import '../controller/image_converted_controller.dart';
import 'package:flutter/material.dart';
import 'package:fast_ai/core/app_export.dart';

// ignore: must_be_immutable
class ImagesItemWidget extends StatelessWidget {
  ImagesItemWidget(
    this.imagesItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ImagesItemModel imagesItemModelObj;

  var controller = Get.find<ImageConvertedController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 250.v,
        width: 315.h,
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Obx(
              () => CustomImageView(
                imagePath: imagesItemModelObj.image!.value,
                height: 250.v,
                radius: BorderRadius.circular(
                  20.h,
                ),
                alignment: Alignment.center,
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgDownload,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(
                top: 14.v,
                right: 14.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
