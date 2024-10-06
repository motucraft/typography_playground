import 'package:flutter/material.dart';
import 'package:typography_playground/app_text_theme_extension.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppTextThemeExtension',
      theme: appTheme,
      home: const Typography(),
    );
  }
}

class Typography extends StatelessWidget {
  const Typography({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    return Scaffold(
      appBar: AppBar(title: const Text('AppTextThemeExtension')),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Title Bold 24px', style: textTheme.titleBold),
                Text('Title Regular 20px', style: textTheme.titleRegular20),
                Text('Title Medium 16px', style: textTheme.titleMedium),
                Text('Title Regular 16px', style: textTheme.titleRegular16),
                Text('Headline Bold 20px', style: textTheme.headlineBold),
                Text('Headline Medium 20px', style: textTheme.headlineMedium),
                Text('Body Bold 16px', style: textTheme.bodyBold16),
                Text('Body Medium 16px', style: textTheme.bodyMedium),
                Text('Body Regular 16px', style: textTheme.bodyRegular16),
                Text('Body Bold 14px', style: textTheme.bodyBold14),
                Text('Body Regular 14px', style: textTheme.bodyRegular14),
                Text('Body Regular 12px', style: textTheme.bodyRegular12),
                Text('Body Regular 10px', style: textTheme.bodyRegular10),
                Text('Label Medium 16px', style: textTheme.labelMedium16),
                Text('Label Medium 14px', style: textTheme.labelMedium14),
                Text('Label Bold 12px', style: textTheme.labelBold),
                Text('Label Medium 12px', style: textTheme.labelMedium12),
              ].addColumnGap(8),
            ),
          ),
        ),
      ),
    );
  }
}

extension TextThemeExtension on BuildContext {
  AppTextThemeExtension get textTheme =>
      Theme.of(this).extension<AppTextThemeExtension>()!;
}

extension AddGap on List<Widget> {
  List<Widget> addColumnGap(double size) {
    if (length == 0) {
      return [];
    }

    return expand(
      (widget) => [
        widget,
        SizedBox(
          height: size,
        ),
      ],
    ).take(length * 2 - 1).toList();
  }
}
