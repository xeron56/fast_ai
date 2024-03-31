import 'package:flutter/material.dart';
import 'package:fast_ai/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black90001,
      );
  static BoxDecoration get fillBlack900 => BoxDecoration(
        color: appTheme.black900,
      );
  static BoxDecoration get fillBlack90002 => BoxDecoration(
        color: appTheme.black90002,
      );
  static BoxDecoration get fillBlack90003 => BoxDecoration(
        color: appTheme.black90003,
      );
  static BoxDecoration get fillBlack900031 => BoxDecoration(
        color: appTheme.black90003.withOpacity(0.3),
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray90008,
      );
  static BoxDecoration get fillGray50 => BoxDecoration(
        color: appTheme.gray50,
      );
  static BoxDecoration get fillGray5001 => BoxDecoration(
        color: appTheme.gray5001,
      );
  static BoxDecoration get fillGray80001 => BoxDecoration(
        color: appTheme.gray80001,
      );
  static BoxDecoration get fillGray90001 => BoxDecoration(
        color: appTheme.gray90001,
      );
  static BoxDecoration get fillGray90002 => BoxDecoration(
        color: appTheme.gray90002,
      );
  static BoxDecoration get fillGray90003 => BoxDecoration(
        color: appTheme.gray90003,
      );
  static BoxDecoration get fillGray90004 => BoxDecoration(
        color: appTheme.gray90004,
      );
  static BoxDecoration get fillGray90005 => BoxDecoration(
        color: appTheme.gray90005,
      );
  static BoxDecoration get fillGray90009 => BoxDecoration(
        color: appTheme.gray90009,
      );
  static BoxDecoration get fillGray90010 => BoxDecoration(
        color: appTheme.gray90010,
      );
  static BoxDecoration get fillGreenA => BoxDecoration(
        color: appTheme.greenA200,
      );
  static BoxDecoration get fillOnErrorContainer => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
      );
  static BoxDecoration get fillOnPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimary,
      );
  static BoxDecoration get fillOnSecondaryContainer => BoxDecoration(
        color: theme.colorScheme.onSecondaryContainer,
      );
  static BoxDecoration get fillPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.primaryContainer,
      );
  static BoxDecoration get fillTeal => BoxDecoration(
        color: appTheme.teal90001,
      );
  static BoxDecoration get fillTeal90002 => BoxDecoration(
        color: appTheme.teal90002,
      );
  static BoxDecoration get fillTeal90004 => BoxDecoration(
        color: appTheme.teal90004,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: appTheme.whiteA700.withOpacity(0.6),
      );
  static BoxDecoration get fillWhiteA7001 => BoxDecoration(
        color: appTheme.whiteA700.withOpacity(0.5),
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.gray90004,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90003.withOpacity(0.05),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              5,
              12,
            ),
          ),
        ],
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder23 => BorderRadius.circular(
        23.h,
      );
  static BorderRadius get circleBorder45 => BorderRadius.circular(
        45.h,
      );
  static BorderRadius get circleBorder50 => BorderRadius.circular(
        50.h,
      );
  static BorderRadius get circleBorder65 => BorderRadius.circular(
        65.h,
      );
  static BorderRadius get circleBorder75 => BorderRadius.circular(
        75.h,
      );

  // Custom borders
  static BorderRadius get customBorderBL14 => BorderRadius.vertical(
        bottom: Radius.circular(14.h),
      );
  static BorderRadius get customBorderBL23 => BorderRadius.vertical(
        bottom: Radius.circular(23.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder14 => BorderRadius.circular(
        14.h,
      );
  static BorderRadius get roundedBorder17 => BorderRadius.circular(
        17.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get roundedBorder26 => BorderRadius.circular(
        26.h,
      );
  static BorderRadius get roundedBorder30 => BorderRadius.circular(
        30.h,
      );
  static BorderRadius get roundedBorder40 => BorderRadius.circular(
        40.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.
    
// For Flutter SDK Version 3.7.2 or greater.
    
double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
    