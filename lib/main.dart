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
                Text('Title Bold 24px', style: customStyles(context).titleBold),
                Text('Title Regular 20px',
                    style: customStyles(context).titleRegular20),
                Text('Title Medium 16px',
                    style: customStyles(context).titleMedium),
                Text('Title Regular 16px',
                    style: customStyles(context).titleRegular16),
                Text('Headline Bold 20px',
                    style: customStyles(context).headlineBold),
                Text('Headline Medium 20px',
                    style: customStyles(context).headlineMedium),
                Text('Body Bold 16px', style: customStyles(context).bodyBold16),
                Text('Body Medium 16px',
                    style: customStyles(context).bodyMedium),
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
                Text('Label Bold 12px', style: customStyles(context).labelBold),
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
