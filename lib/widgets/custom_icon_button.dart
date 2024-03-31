import 'package:flutter/material.dart';
import '../core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: theme.colorScheme.onSecondaryContainer,
                  borderRadius: BorderRadius.circular(25.h),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black90003,
        borderRadius: BorderRadius.circular(25.h),
      );
  static BoxDecoration get fillTeal => BoxDecoration(
        color: appTheme.teal90001,
        borderRadius: BorderRadius.circular(21.h),
      );
  static BoxDecoration get fillGreen => BoxDecoration(
        color: appTheme.green50,
        borderRadius: BorderRadius.circular(21.h),
      );
  static BoxDecoration get fillTealTL25 => BoxDecoration(
        color: appTheme.teal900,
        borderRadius: BorderRadius.circular(25.h),
      );
  static BoxDecoration get fillTealTL251 => BoxDecoration(
        color: appTheme.teal90005,
        borderRadius: BorderRadius.circular(25.h),
      );
  static BoxDecoration get fillTealTL50 => BoxDecoration(
        color: appTheme.teal90005,
        borderRadius: BorderRadius.circular(50.h),
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray900,
        borderRadius: BorderRadius.circular(25.h),
      );
  static BoxDecoration get fillGrayTL25 => BoxDecoration(
        color: appTheme.gray90006,
        borderRadius: BorderRadius.circular(25.h),
      );
  static BoxDecoration get fillGrayTL251 => BoxDecoration(
        color: appTheme.gray90004,
        borderRadius: BorderRadius.circular(25.h),
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700.withOpacity(0.6),
        borderRadius: BorderRadius.circular(25.h),
      );
  static BoxDecoration get fillGreenA => BoxDecoration(
        color: appTheme.greenA70001,
        borderRadius: BorderRadius.circular(28.h),
      );
  static BoxDecoration get fillGrayTL252 => BoxDecoration(
        color: appTheme.gray90003,
        borderRadius: BorderRadius.circular(25.h),
      );
  static BoxDecoration get fillBlackTL28 => BoxDecoration(
        color: appTheme.black90003.withOpacity(0.3),
        borderRadius: BorderRadius.circular(28.h),
      );
  static BoxDecoration get fillTealTL12 => BoxDecoration(
        color: appTheme.teal90001,
        borderRadius: BorderRadius.circular(12.h),
      );
  static BoxDecoration get fillGrayTL12 => BoxDecoration(
        color: appTheme.gray90008,
        borderRadius: BorderRadius.circular(12.h),
      );
  static BoxDecoration get fillGrayTL121 => BoxDecoration(
        color: appTheme.gray90009,
        borderRadius: BorderRadius.circular(12.h),
      );
  static BoxDecoration get fillGrayTL122 => BoxDecoration(
        color: appTheme.gray90005,
        borderRadius: BorderRadius.circular(12.h),
      );
  static BoxDecoration get fillGrayTL123 => BoxDecoration(
        color: appTheme.gray90010,
        borderRadius: BorderRadius.circular(12.h),
      );
  static BoxDecoration get fillGrayTL124 => BoxDecoration(
        color: appTheme.gray90001,
        borderRadius: BorderRadius.circular(12.h),
      );
  static BoxDecoration get outlineWhiteA => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(20.h),
        border: Border.all(
          color: appTheme.whiteA700,
          width: 5.h,
        ),
      );
  static BoxDecoration get fillGrayTL253 => BoxDecoration(
        color: appTheme.gray800,
        borderRadius: BorderRadius.circular(25.h),
      );
}
