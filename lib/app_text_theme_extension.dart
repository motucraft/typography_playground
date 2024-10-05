import 'package:flutter/material.dart';

class AppTextThemeExtension extends ThemeExtension<AppTextThemeExtension> {
  final TextStyle titleBold;
  final TextStyle titleMedium;
  final TextStyle titleRegular16;
  final TextStyle titleRegular20;
  final TextStyle headlineBold;
  final TextStyle headlineMedium;
  final TextStyle bodyBold14;
  final TextStyle bodyBold16;
  final TextStyle bodyMedium;
  final TextStyle bodyRegular10;
  final TextStyle bodyRegular12;
  final TextStyle bodyRegular14;
  final TextStyle bodyRegular16;
  final TextStyle labelBold;
  final TextStyle labelMedium12;
  final TextStyle labelMedium14;
  final TextStyle labelMedium16;

  const AppTextThemeExtension({
    required this.titleBold,
    required this.titleMedium,
    required this.titleRegular16,
    required this.titleRegular20,
    required this.headlineBold,
    required this.headlineMedium,
    required this.bodyBold14,
    required this.bodyBold16,
    required this.bodyMedium,
    required this.bodyRegular10,
    required this.bodyRegular12,
    required this.bodyRegular14,
    required this.bodyRegular16,
    required this.labelBold,
    required this.labelMedium12,
    required this.labelMedium14,
    required this.labelMedium16,
  });

  @override
  AppTextThemeExtension copyWith({
    TextStyle? titleBold,
    TextStyle? titleMedium,
    TextStyle? titleRegular16,
    TextStyle? titleRegular20,
    TextStyle? headlineBold,
    TextStyle? headlineMedium,
    TextStyle? bodyBold14,
    TextStyle? bodyBold16,
    TextStyle? bodyMedium,
    TextStyle? bodyRegular10,
    TextStyle? bodyRegular12,
    TextStyle? bodyRegular14,
    TextStyle? bodyRegular16,
    TextStyle? labelBold,
    TextStyle? labelMedium12,
    TextStyle? labelMedium14,
    TextStyle? labelMedium16,
  }) {
    return AppTextThemeExtension(
      titleBold: titleBold ?? this.titleBold,
      titleMedium: titleMedium ?? this.titleMedium,
      titleRegular16: titleRegular16 ?? this.titleRegular16,
      titleRegular20: titleRegular20 ?? this.titleRegular20,
      headlineBold: headlineBold ?? this.headlineBold,
      headlineMedium: headlineMedium ?? this.headlineMedium,
      bodyBold14: bodyBold14 ?? this.bodyBold14,
      bodyBold16: bodyBold16 ?? this.bodyBold16,
      bodyMedium: bodyMedium ?? this.bodyMedium,
      bodyRegular10: bodyRegular10 ?? this.bodyRegular10,
      bodyRegular12: bodyRegular12 ?? this.bodyRegular12,
      bodyRegular14: bodyRegular14 ?? this.bodyRegular14,
      bodyRegular16: bodyRegular16 ?? this.bodyRegular16,
      labelBold: labelBold ?? this.labelBold,
      labelMedium12: labelMedium12 ?? this.labelMedium12,
      labelMedium14: labelMedium14 ?? this.labelMedium14,
      labelMedium16: labelMedium16 ?? this.labelMedium16,
    );
  }

  @override
  AppTextThemeExtension lerp(
      covariant ThemeExtension<AppTextThemeExtension>? other, double t) {
    if (other is! AppTextThemeExtension) return this;

    return AppTextThemeExtension(
      titleBold: TextStyle.lerp(titleBold, other.titleBold, t)!,
      titleMedium: TextStyle.lerp(titleMedium, other.titleMedium, t)!,
      titleRegular16: TextStyle.lerp(titleRegular16, other.titleRegular16, t)!,
      titleRegular20: TextStyle.lerp(titleRegular20, other.titleRegular20, t)!,
      headlineBold: TextStyle.lerp(headlineBold, other.headlineBold, t)!,
      headlineMedium: TextStyle.lerp(headlineMedium, other.headlineMedium, t)!,
      bodyBold14: TextStyle.lerp(bodyBold14, other.bodyBold14, t)!,
      bodyBold16: TextStyle.lerp(bodyBold16, other.bodyBold16, t)!,
      bodyMedium: TextStyle.lerp(bodyMedium, other.bodyMedium, t)!,
      bodyRegular10: TextStyle.lerp(bodyRegular10, other.bodyRegular10, t)!,
      bodyRegular12: TextStyle.lerp(bodyRegular12, other.bodyRegular12, t)!,
      bodyRegular14: TextStyle.lerp(bodyRegular14, other.bodyRegular14, t)!,
      bodyRegular16: TextStyle.lerp(bodyRegular16, other.bodyRegular16, t)!,
      labelBold: TextStyle.lerp(labelBold, other.labelBold, t)!,
      labelMedium12: TextStyle.lerp(labelMedium12, other.labelMedium12, t)!,
      labelMedium14: TextStyle.lerp(labelMedium14, other.labelMedium14, t)!,
      labelMedium16: TextStyle.lerp(labelMedium16, other.labelMedium16, t)!,
    );
  }
}

final appTheme = ThemeData(
  fontFamily: 'NotoSansJP',
  extensions: const [
    AppTextThemeExtension(
      // Title
      titleBold: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
      titleMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      titleRegular16: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
      titleRegular20: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),

      // Headline
      headlineBold: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
      headlineMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),

      // Body
      bodyBold14: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
      bodyBold16: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
      bodyMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      bodyRegular10: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
      bodyRegular12: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
      bodyRegular14: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
      bodyRegular16: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),

      // Label
      labelBold: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
      labelMedium12: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
      labelMedium14: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
      labelMedium16: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
    ),
  ],
);
