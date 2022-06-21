import 'package:built_value/built_value.dart';
import 'package:flutter/rendering.dart';

part 'typography.g.dart';

abstract class AppTypographyData
    implements Built<AppTypographyData, AppTypographyDataBuilder> {
  AppTypographyData._();
  TextStyle get paragraph1;
  TextStyle get paragraph2;
  TextStyle get title1;
  TextStyle get title2;
  TextStyle get title3;
  factory AppTypographyData([void Function(AppTypographyDataBuilder) updates]) =
      _$AppTypographyData;
  factory AppTypographyData.regular() => AppTypographyData(
        (update) => update
          ..paragraph1 = TextStyle(
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w400,
            fontSize: 12,
            decoration: TextDecoration.none,
          )
          ..paragraph2 = TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            fontSize: 10,
            decoration: TextDecoration.none,
          )
          ..title1 = TextStyle(
            fontFamily: 'Poppins',
            fontSize: 28,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.none,
          )
          ..title2 = TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.none,
          )
          ..title3 = TextStyle(
            fontFamily: 'Roboto',
            fontSize: 14,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.none,
          ),
      );
}
