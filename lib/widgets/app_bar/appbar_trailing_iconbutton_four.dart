import 'package:fast_ai/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:fast_ai/core/app_export.dart';

// ignore: must_be_immutable
class AppbarTrailingIconbuttonFour extends StatelessWidget {
  AppbarTrailingIconbuttonFour({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomIconButton(
          height: 50.adaptSize,
          width: 50.adaptSize,
          child: CustomImageView(
            imagePath: ImageConstant.imgDot,
          ),
        ),
      ),
    );
  }
}
