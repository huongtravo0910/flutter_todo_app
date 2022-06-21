import 'package:built_value/built_value.dart';
import 'package:flutter/rendering.dart';

part 'color.g.dart';

abstract class AppColorsData
    implements Built<AppColorsData, AppColorsDataBuilder> {
  AppColorsData._();
  Color get canvasColor;
  Color get primaryColor;
  Color get accentColor;
  Color get secondaryHeaderColor;
  Color get hintColor;
  factory AppColorsData([void Function(AppColorsDataBuilder) updates]) =
      _$AppColorsData;
  factory AppColorsData.regular() {
    Color _green = Color.fromARGB(255, 132, 143, 0);
    Color _violet = Color.fromARGB(255, 60, 45, 65);
    Color _greyLight = Color.fromARGB(255, 255, 248, 240);
    return AppColorsData((update) => update
      ..canvasColor = _greyLight
      ..primaryColor = _violet
      ..accentColor = _green
      ..hintColor = _greyLight
      ..secondaryHeaderColor = _green);
  }
}
