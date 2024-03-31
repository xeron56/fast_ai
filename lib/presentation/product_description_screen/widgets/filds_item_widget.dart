import '../models/filds_item_model.dart';
import '../controller/product_description_controller.dart';
import 'package:flutter/material.dart';
import 'package:fast_ai/core/app_export.dart';

// ignore: must_be_immutable
class FildsItemWidget extends StatelessWidget {
  FildsItemWidget(
    this.fildsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FildsItemModel fildsItemModelObj;

  var controller = Get.find<ProductDescriptionController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 12.v,
        ),
        decoration: AppDecoration.fillBlack90003.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder17,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 5.v),
            Container(
              width: 269.h,
              margin: EdgeInsets.only(
                left: 4.h,
                right: 9.h,
              ),
              child: Obx(
                () => Text(
                  fildsItemModelObj.findAllTheAi!.value,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleMedium16.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
            ),
            SizedBox(height: 6.v),
            CustomImageView(
              imagePath: ImageConstant.imgUpload,
              height: 20.adaptSize,
              width: 20.adaptSize,
              alignment: Alignment.centerRight,
            ),
          ],
        ),
      ),
    );
  }
}
