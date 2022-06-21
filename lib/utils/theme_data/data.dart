import 'package:built_value/built_value.dart';
import 'package:flutter_todo_app/utils/theme_data/color.dart';
import 'package:flutter_todo_app/utils/theme_data/typography.dart';

part 'data.g.dart';

abstract class AppThemeData
    implements Built<AppThemeData, AppThemeDataBuilder> {
  AppThemeData._();
  factory AppThemeData([void Function(AppThemeDataBuilder) updates]) =
      _$AppThemeData;
  AppTypographyData get typography;
  AppColorsData get color;

  static void _initializeBuilder(AppThemeDataBuilder builder) => builder
    ..typography = AppTypographyData.regular().toBuilder()
    ..color = AppColorsData.regular().toBuilder();

  factory AppThemeData.regular() => AppThemeData(
        (update) => update
          ..typography = AppTypographyData.regular().toBuilder()
          ..color = AppColorsData.regular().toBuilder(),
      );
}
