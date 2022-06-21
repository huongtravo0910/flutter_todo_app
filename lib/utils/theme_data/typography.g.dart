// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'typography.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AppTypographyData extends AppTypographyData {
  @override
  final TextStyle paragraph1;
  @override
  final TextStyle paragraph2;
  @override
  final TextStyle title1;
  @override
  final TextStyle title2;
  @override
  final TextStyle title3;

  factory _$AppTypographyData(
          [void Function(AppTypographyDataBuilder) updates]) =>
      (new AppTypographyDataBuilder()..update(updates))._build();

  _$AppTypographyData._(
      {this.paragraph1, this.paragraph2, this.title1, this.title2, this.title3})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        paragraph1, r'AppTypographyData', 'paragraph1');
    BuiltValueNullFieldError.checkNotNull(
        paragraph2, r'AppTypographyData', 'paragraph2');
    BuiltValueNullFieldError.checkNotNull(
        title1, r'AppTypographyData', 'title1');
    BuiltValueNullFieldError.checkNotNull(
        title2, r'AppTypographyData', 'title2');
    BuiltValueNullFieldError.checkNotNull(
        title3, r'AppTypographyData', 'title3');
  }

  @override
  AppTypographyData rebuild(void Function(AppTypographyDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppTypographyDataBuilder toBuilder() =>
      new AppTypographyDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppTypographyData &&
        paragraph1 == other.paragraph1 &&
        paragraph2 == other.paragraph2 &&
        title1 == other.title1 &&
        title2 == other.title2 &&
        title3 == other.title3;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, paragraph1.hashCode), paragraph2.hashCode),
                title1.hashCode),
            title2.hashCode),
        title3.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AppTypographyData')
          ..add('paragraph1', paragraph1)
          ..add('paragraph2', paragraph2)
          ..add('title1', title1)
          ..add('title2', title2)
          ..add('title3', title3))
        .toString();
  }
}

class AppTypographyDataBuilder
    implements Builder<AppTypographyData, AppTypographyDataBuilder> {
  _$AppTypographyData _$v;

  TextStyle _paragraph1;
  TextStyle get paragraph1 => _$this._paragraph1;
  set paragraph1(TextStyle paragraph1) => _$this._paragraph1 = paragraph1;

  TextStyle _paragraph2;
  TextStyle get paragraph2 => _$this._paragraph2;
  set paragraph2(TextStyle paragraph2) => _$this._paragraph2 = paragraph2;

  TextStyle _title1;
  TextStyle get title1 => _$this._title1;
  set title1(TextStyle title1) => _$this._title1 = title1;

  TextStyle _title2;
  TextStyle get title2 => _$this._title2;
  set title2(TextStyle title2) => _$this._title2 = title2;

  TextStyle _title3;
  TextStyle get title3 => _$this._title3;
  set title3(TextStyle title3) => _$this._title3 = title3;

  AppTypographyDataBuilder();

  AppTypographyDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _paragraph1 = $v.paragraph1;
      _paragraph2 = $v.paragraph2;
      _title1 = $v.title1;
      _title2 = $v.title2;
      _title3 = $v.title3;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppTypographyData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppTypographyData;
  }

  @override
  void update(void Function(AppTypographyDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  AppTypographyData build() => _build();

  _$AppTypographyData _build() {
    final _$result = _$v ??
        new _$AppTypographyData._(
            paragraph1: BuiltValueNullFieldError.checkNotNull(
                paragraph1, r'AppTypographyData', 'paragraph1'),
            paragraph2: BuiltValueNullFieldError.checkNotNull(
                paragraph2, r'AppTypographyData', 'paragraph2'),
            title1: BuiltValueNullFieldError.checkNotNull(
                title1, r'AppTypographyData', 'title1'),
            title2: BuiltValueNullFieldError.checkNotNull(
                title2, r'AppTypographyData', 'title2'),
            title3: BuiltValueNullFieldError.checkNotNull(
                title3, r'AppTypographyData', 'title3'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
