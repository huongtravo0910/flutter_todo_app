// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'color.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AppColorsData extends AppColorsData {
  @override
  final Color canvasColor;
  @override
  final Color primaryColor;
  @override
  final Color accentColor;
  @override
  final Color secondaryHeaderColor;
  @override
  final Color hintColor;

  factory _$AppColorsData([void Function(AppColorsDataBuilder) updates]) =>
      (new AppColorsDataBuilder()..update(updates))._build();

  _$AppColorsData._(
      {this.canvasColor,
      this.primaryColor,
      this.accentColor,
      this.secondaryHeaderColor,
      this.hintColor})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        canvasColor, r'AppColorsData', 'canvasColor');
    BuiltValueNullFieldError.checkNotNull(
        primaryColor, r'AppColorsData', 'primaryColor');
    BuiltValueNullFieldError.checkNotNull(
        accentColor, r'AppColorsData', 'accentColor');
    BuiltValueNullFieldError.checkNotNull(
        secondaryHeaderColor, r'AppColorsData', 'secondaryHeaderColor');
    BuiltValueNullFieldError.checkNotNull(
        hintColor, r'AppColorsData', 'hintColor');
  }

  @override
  AppColorsData rebuild(void Function(AppColorsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppColorsDataBuilder toBuilder() => new AppColorsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppColorsData &&
        canvasColor == other.canvasColor &&
        primaryColor == other.primaryColor &&
        accentColor == other.accentColor &&
        secondaryHeaderColor == other.secondaryHeaderColor &&
        hintColor == other.hintColor;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, canvasColor.hashCode), primaryColor.hashCode),
                accentColor.hashCode),
            secondaryHeaderColor.hashCode),
        hintColor.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AppColorsData')
          ..add('canvasColor', canvasColor)
          ..add('primaryColor', primaryColor)
          ..add('accentColor', accentColor)
          ..add('secondaryHeaderColor', secondaryHeaderColor)
          ..add('hintColor', hintColor))
        .toString();
  }
}

class AppColorsDataBuilder
    implements Builder<AppColorsData, AppColorsDataBuilder> {
  _$AppColorsData _$v;

  Color _canvasColor;
  Color get canvasColor => _$this._canvasColor;
  set canvasColor(Color canvasColor) => _$this._canvasColor = canvasColor;

  Color _primaryColor;
  Color get primaryColor => _$this._primaryColor;
  set primaryColor(Color primaryColor) => _$this._primaryColor = primaryColor;

  Color _accentColor;
  Color get accentColor => _$this._accentColor;
  set accentColor(Color accentColor) => _$this._accentColor = accentColor;

  Color _secondaryHeaderColor;
  Color get secondaryHeaderColor => _$this._secondaryHeaderColor;
  set secondaryHeaderColor(Color secondaryHeaderColor) =>
      _$this._secondaryHeaderColor = secondaryHeaderColor;

  Color _hintColor;
  Color get hintColor => _$this._hintColor;
  set hintColor(Color hintColor) => _$this._hintColor = hintColor;

  AppColorsDataBuilder();

  AppColorsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _canvasColor = $v.canvasColor;
      _primaryColor = $v.primaryColor;
      _accentColor = $v.accentColor;
      _secondaryHeaderColor = $v.secondaryHeaderColor;
      _hintColor = $v.hintColor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppColorsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppColorsData;
  }

  @override
  void update(void Function(AppColorsDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  AppColorsData build() => _build();

  _$AppColorsData _build() {
    final _$result = _$v ??
        new _$AppColorsData._(
            canvasColor: BuiltValueNullFieldError.checkNotNull(
                canvasColor, r'AppColorsData', 'canvasColor'),
            primaryColor: BuiltValueNullFieldError.checkNotNull(
                primaryColor, r'AppColorsData', 'primaryColor'),
            accentColor: BuiltValueNullFieldError.checkNotNull(
                accentColor, r'AppColorsData', 'accentColor'),
            secondaryHeaderColor: BuiltValueNullFieldError.checkNotNull(
                secondaryHeaderColor, r'AppColorsData', 'secondaryHeaderColor'),
            hintColor: BuiltValueNullFieldError.checkNotNull(
                hintColor, r'AppColorsData', 'hintColor'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
