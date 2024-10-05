import 'package:flutter/material.dart';

class AppTextThemeExtension extends ThemeExtension<AppTextThemeExtension> {
  final TextStyle titleBold24;
  final TextStyle titleRegular20;
  final TextStyle titleMedium16;
  final TextStyle titleRegular16;
  final TextStyle bodyRegular12;
  final TextStyle bodyRegular14;
  final TextStyle headlineBold20;
  final TextStyle headlineMedium20;
  final TextStyle bodyBold16;
  final TextStyle bodyMedium16;
  final TextStyle bodyRegular16;
  final TextStyle bodyBold14;
  final TextStyle bodyRegular10;
  final TextStyle labelMedium16;
  final TextStyle labelMedium14;
  final TextStyle labelBold12;
  final TextStyle labelMedium12;

  const AppTextThemeExtension({
    required this.titleBold24,
    required this.titleRegular20,
    required this.titleMedium16,
    required this.titleRegular16,
    required this.bodyRegular12,
    required this.bodyRegular14,
    required this.headlineBold20,
    required this.headlineMedium20,
    required this.bodyBold16,
    required this.bodyMedium16,
    required this.bodyRegular16,
    required this.bodyBold14,
    required this.bodyRegular10,
    required this.labelMedium16,
    required this.labelMedium14,
    required this.labelBold12,
    required this.labelMedium12,
  });

  @override
  AppTextThemeExtension copyWith({
    TextStyle? titleBold24,
    TextStyle? titleRegular20,
    TextStyle? titleMedium16,
    TextStyle? titleRegular16,
    TextStyle? bodyRegular12,
    TextStyle? bodyRegular14,
    TextStyle? headlineBold20,
    TextStyle? headlineMedium20,
    TextStyle? bodyBold16,
    TextStyle? bodyMedium16,
    TextStyle? bodyRegular16,
    TextStyle? bodyBold14,
    TextStyle? bodyRegular10,
    TextStyle? labelMedium16,
    TextStyle? labelMedium14,
    TextStyle? labelBold12,
    TextStyle? labelMedium12,
  }) {
    return AppTextThemeExtension(
      titleBold24: titleBold24 ?? this.titleBold24,
      titleRegular20: titleRegular20 ?? this.titleRegular20,
      titleMedium16: titleMedium16 ?? this.titleMedium16,
      titleRegular16: titleRegular16 ?? this.titleRegular16,
      bodyRegular12: bodyRegular12 ?? this.bodyRegular12,
      bodyRegular14: bodyRegular14 ?? this.bodyRegular14,
      headlineBold20: headlineBold20 ?? this.headlineBold20,
      headlineMedium20: headlineMedium20 ?? this.headlineMedium20,
      bodyBold16: bodyBold16 ?? this.bodyBold16,
      bodyMedium16: bodyMedium16 ?? this.bodyMedium16,
      bodyRegular16: bodyRegular16 ?? this.bodyRegular16,
      bodyBold14: bodyBold14 ?? this.bodyBold14,
      bodyRegular10: bodyRegular10 ?? this.bodyRegular10,
      labelMedium16: labelMedium16 ?? this.labelMedium16,
      labelMedium14: labelMedium14 ?? this.labelMedium14,
      labelBold12: labelBold12 ?? this.labelBold12,
      labelMedium12: labelMedium12 ?? this.labelMedium12,
    );
  }

  @override
  AppTextThemeExtension lerp(
      covariant ThemeExtension<AppTextThemeExtension>? other, double t) {
    if (other is! AppTextThemeExtension) return this;

    return AppTextThemeExtension(
      titleBold24: TextStyle.lerp(titleBold24, other.titleBold24, t)!,
      titleRegular20: TextStyle.lerp(titleRegular20, other.titleRegular20, t)!,
      titleMedium16: TextStyle.lerp(titleMedium16, other.titleMedium16, t)!,
      titleRegular16: TextStyle.lerp(titleRegular16, other.titleRegular16, t)!,
      bodyRegular12: TextStyle.lerp(bodyRegular12, other.bodyRegular12, t)!,
      bodyRegular14: TextStyle.lerp(bodyRegular14, other.bodyRegular14, t)!,
      headlineBold20: TextStyle.lerp(headlineBold20, other.headlineBold20, t)!,
      headlineMedium20:
          TextStyle.lerp(headlineMedium20, other.headlineMedium20, t)!,
      bodyBold16: TextStyle.lerp(bodyBold16, other.bodyBold16, t)!,
      bodyMedium16: TextStyle.lerp(bodyMedium16, other.bodyMedium16, t)!,
      bodyRegular16: TextStyle.lerp(bodyRegular16, other.bodyRegular16, t)!,
      bodyBold14: TextStyle.lerp(bodyBold14, other.bodyBold14, t)!,
      bodyRegular10: TextStyle.lerp(bodyRegular10, other.bodyRegular10, t)!,
      labelMedium16: TextStyle.lerp(labelMedium16, other.labelMedium16, t)!,
      labelMedium14: TextStyle.lerp(labelMedium14, other.labelMedium14, t)!,
      labelBold12: TextStyle.lerp(labelBold12, other.labelBold12, t)!,
      labelMedium12: TextStyle.lerp(labelMedium12, other.labelMedium12, t)!,
    );
  }
}
