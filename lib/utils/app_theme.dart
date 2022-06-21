import 'package:flutter/material.dart';

import 'theme_data/data.dart';

export 'theme_data/color.dart';
export 'theme_data/typography.dart';

class AppTheme extends InheritedWidget {
  const AppTheme({
    Key key,
    @required this.data,
    @required Widget child,
  }) : super(
          key: key,
          child: child,
        );

  final AppThemeData data;

  static AppThemeData of(BuildContext context) {
    final widget = context.dependOnInheritedWidgetOfExactType<AppTheme>();
    return widget?.data ?? AppThemeData.regular();
  }

  @override
  bool updateShouldNotify(covariant AppTheme oldWidget) {
    return data != oldWidget.data;
  }
}
