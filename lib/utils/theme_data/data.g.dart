// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AppThemeData extends AppThemeData {
  @override
  final AppTypographyData typography;
  @override
  final AppColorsData color;

  factory _$AppThemeData([void Function(AppThemeDataBuilder) updates]) =>
      (new AppThemeDataBuilder()..update(updates))._build();

  _$AppThemeData._({this.typography, this.color}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        typography, r'AppThemeData', 'typography');
    BuiltValueNullFieldError.checkNotNull(color, r'AppThemeData', 'color');
  }

  @override
  AppThemeData rebuild(void Function(AppThemeDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppThemeDataBuilder toBuilder() => new AppThemeDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppThemeData &&
        typography == other.typography &&
        color == other.color;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, typography.hashCode), color.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AppThemeData')
          ..add('typography', typography)
          ..add('color', color))
        .toString();
  }
}

class AppThemeDataBuilder
    implements Builder<AppThemeData, AppThemeDataBuilder> {
  _$AppThemeData _$v;

  AppTypographyDataBuilder _typography;
  AppTypographyDataBuilder get typography =>
      _$this._typography ??= new AppTypographyDataBuilder();
  set typography(AppTypographyDataBuilder typography) =>
      _$this._typography = typography;

  AppColorsDataBuilder _color;
  AppColorsDataBuilder get color =>
      _$this._color ??= new AppColorsDataBuilder();
  set color(AppColorsDataBuilder color) => _$this._color = color;

  AppThemeDataBuilder() {
    AppThemeData._initializeBuilder(this);
  }

  AppThemeDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _typography = $v.typography.toBuilder();
      _color = $v.color.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppThemeData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppThemeData;
  }

  @override
  void update(void Function(AppThemeDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  AppThemeData build() => _build();

  _$AppThemeData _build() {
    _$AppThemeData _$result;
    try {
      _$result = _$v ??
          new _$AppThemeData._(
              typography: typography.build(), color: color.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'typography';
        typography.build();
        _$failedField = 'color';
        color.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AppThemeData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
