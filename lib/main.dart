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
    return Scaffold(
      appBar: AppBar(title: const Text('AppTextThemeExtension')),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text('Title Bold 24px',
                    style: customStyles(context).titleBold24),
                Text('Title Regular 20px',
                    style: customStyles(context).titleRegular20),
                Text('Title Medium 16px',
                    style: customStyles(context).titleMedium16),
                Text('Title Regular 16px',
                    style: customStyles(context).titleRegular16),
                Text('Headline Bold 20px',
                    style: customStyles(context).headlineBold20),
                Text('Headline Medium 20px',
                    style: customStyles(context).headlineMedium20),
                Text('Body Bold 16px', style: customStyles(context).bodyBold16),
                Text('Body Medium 16px',
                    style: customStyles(context).bodyMedium16),
                Text('Body Regular 16px',
                    style: customStyles(context).bodyRegular16),
                Text('Body Bold 14px', style: customStyles(context).bodyBold14),
                Text('Body Regular 14px',
                    style: customStyles(context).bodyRegular14),
                Text('Body Regular 12px',
                    style: customStyles(context).bodyRegular12),
                Text('Body Regular 10px',
                    style: customStyles(context).bodyRegular10),
                Text('Label Medium 16px',
                    style: customStyles(context).labelMedium16),
                Text('Label Medium 14px',
                    style: customStyles(context).labelMedium14),
                Text('Label Bold 12px',
                    style: customStyles(context).labelBold12),
                Text('Label Medium 12px',
                    style: customStyles(context).labelMedium12),
              ].addColumnGap(8),
            ),
          ),
        ),
      ),
    );
  }
}

final appTheme = ThemeData(
  fontFamily: 'NotoSansJP',
  extensions: const [
    AppTextThemeExtension(
      // Title
      titleBold24: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
      titleRegular20: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
      titleMedium16: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      titleRegular16: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),

      // Headline
      headlineBold20: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
      headlineMedium20: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),

      // Body
      bodyBold16: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
      bodyMedium16: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      bodyRegular16: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
      bodyBold14: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
      bodyRegular14: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
      bodyRegular12: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
      bodyRegular10: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),

      // Label
      labelMedium16: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      labelMedium14: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
      labelBold12: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
      labelMedium12: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
    ),
  ],
);

AppTextThemeExtension customStyles(BuildContext context) =>
    Theme.of(context).extension<AppTextThemeExtension>()!;

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
