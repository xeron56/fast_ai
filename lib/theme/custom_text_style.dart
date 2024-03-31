import 'package:flutter/material.dart';
import 'package:fast_ai/core/utils/size_utils.dart';
import 'package:fast_ai/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Display text style
  static get displayMedium50 => theme.textTheme.displayMedium!.copyWith(
        fontSize: 50.fSize,
      );
  static get displayMediumSemiBold => theme.textTheme.displayMedium!.copyWith(
        fontSize: 40.fSize,
        fontWeight: FontWeight.w600,
      );
  static get displayMediumffffffff => theme.textTheme.displayMedium!.copyWith(
        color: Color(0XFFFFFFFF),
        fontSize: 40.fSize,
        fontWeight: FontWeight.w600,
      );
  // Headline text style
  static get headlineLarge32 => theme.textTheme.headlineLarge!.copyWith(
        fontSize: 32.fSize,
      );
  static get headlineLargeBlack900 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.black900,
      );
  static get headlineLargeBlack90003 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.black90003,
        fontWeight: FontWeight.w600,
      );
  static get headlineLargeSemiBold => theme.textTheme.headlineLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get headlineLargeSemiBold32 => theme.textTheme.headlineLarge!.copyWith(
        fontSize: 32.fSize,
        fontWeight: FontWeight.w600,
      );
  static get headlineMediumPrimary => theme.textTheme.headlineMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 26.fSize,
        fontWeight: FontWeight.w600,
      );
  static get headlineMediumWhiteA700 =>
      theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.whiteA700.withOpacity(0.4),
        fontSize: 26.fSize,
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallSemiBold => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
  // Label text style
  static get labelLargeBlack900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
      );
  static get labelLargeBluegray600 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray600,
      );
  static get labelLargeBluegray60001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray60001,
      );
  static get labelLargeGray500 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray500,
      );
  static get labelLargeGray60004 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray60004,
      );
  static get labelLargeGreen800 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.green800,
      );
  static get labelLargeOnError => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onError,
      );
  static get labelLargeWhiteA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get labelLarge_1 => theme.textTheme.labelLarge!;
  static get labelLargeff788495 => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFF788495),
      );
  // Title text style
  static get titleLarge22 => theme.textTheme.titleLarge!.copyWith(
        fontSize: 22.fSize,
      );
  static get titleLargeBluegray400 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray400,
      );
  static get titleLargeBluegray60001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray60001,
      );
  static get titleLargeBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleLargeGray60001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray60001,
      );
  static get titleLargeGray60002 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray60002,
      );
  static get titleLargeGray60003 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray60003,
      );
  static get titleLargeGray60005 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray60005,
      );
  static get titleLargeRedA10001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.redA10001,
        fontSize: 22.fSize,
      );
  static get titleLarge_1 => theme.textTheme.titleLarge!;
  static get titleLargeff788495 => theme.textTheme.titleLarge!.copyWith(
        color: Color(0XFF788495),
        fontSize: 22.fSize,
      );
  static get titleLargeffffffff => theme.textTheme.titleLarge!.copyWith(
        color: Color(0XFFFFFFFF),
        fontSize: 22.fSize,
      );
  static get titleLargeffffffff22 => theme.textTheme.titleLarge!.copyWith(
        color: Color(0XFFFFFFFF),
        fontSize: 22.fSize,
      );
  static get titleMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMediumBluegray400 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 16.fSize,
      );
  static get titleMediumBluegray400_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray400,
      );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumErrorContainer => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get titleMediumGray50001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray50001,
      );
  static get titleMediumGray50002 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray50002,
      );
  static get titleMediumGray600 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray600,
        fontSize: 16.fSize,
      );
  static get titleMediumGray700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray700,
        fontSize: 16.fSize,
      );
  static get titleMediumGray70001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray70001,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumGreenA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.greenA700,
      );
  static get titleMediumGreenA70001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.greenA70001,
      );
  static get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumff788495 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF788495),
        fontSize: 16.fSize,
      );
  static get titleMediumff806dff => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF806DFF),
        fontSize: 16.fSize,
      );
  static get titleSmallGray60005 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray60005,
      );
  static get titleSmallIndigo300 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.indigo300,
      );
  static get titleSmallQuicksand =>
      theme.textTheme.titleSmall!.quicksand.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleSmallff728975 => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF728975),
      );
  static get titleSmallffffffff => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFFFFFFFF),
      );
}

extension on TextStyle {
  TextStyle get rajdhani {
    return copyWith(
      fontFamily: 'Rajdhani',
    );
  }

  TextStyle get racingSansOne {
    return copyWith(
      fontFamily: 'Racing Sans One',
    );
  }

  TextStyle get quicksand {
    return copyWith(
      fontFamily: 'Quicksand',
    );
  }
}
