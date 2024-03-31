import '../models/videoai_item_model.dart';
import '../controller/video_ai_controller.dart';
import 'package:flutter/material.dart';
import 'package:fast_ai/core/app_export.dart';

// ignore: must_be_immutable
class VideoaiItemWidget extends StatelessWidget {
  VideoaiItemWidget(
    this.videoaiItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  VideoaiItemModel videoaiItemModelObj;

  var controller = Get.find<VideoAiController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40.h,
      child: Obx(
        () => CustomImageView(
          imagePath: videoaiItemModelObj.rectangle!.value,
          height: 40.adaptSize,
          width: 40.adaptSize,
          radius: BorderRadius.circular(
            10.h,
          ),
        ),
      ),
    );
  }
}
