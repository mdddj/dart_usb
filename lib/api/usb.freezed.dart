// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'usb.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UsbName {
  String? get manufacturerName => throw _privateConstructorUsedError;
  String? get productName => throw _privateConstructorUsedError;
  String? get serialNumber => throw _privateConstructorUsedError;

  /// Create a copy of UsbName
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UsbNameCopyWith<UsbName> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsbNameCopyWith<$Res> {
  factory $UsbNameCopyWith(UsbName value, $Res Function(UsbName) then) =
      _$UsbNameCopyWithImpl<$Res, UsbName>;
  @useResult
  $Res call(
      {String? manufacturerName, String? productName, String? serialNumber});
}

/// @nodoc
class _$UsbNameCopyWithImpl<$Res, $Val extends UsbName>
    implements $UsbNameCopyWith<$Res> {
  _$UsbNameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UsbName
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? manufacturerName = freezed,
    Object? productName = freezed,
    Object? serialNumber = freezed,
  }) {
    return _then(_value.copyWith(
      manufacturerName: freezed == manufacturerName
          ? _value.manufacturerName
          : manufacturerName // ignore: cast_nullable_to_non_nullable
              as String?,
      productName: freezed == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UsbNameImplCopyWith<$Res> implements $UsbNameCopyWith<$Res> {
  factory _$$UsbNameImplCopyWith(
          _$UsbNameImpl value, $Res Function(_$UsbNameImpl) then) =
      __$$UsbNameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? manufacturerName, String? productName, String? serialNumber});
}

/// @nodoc
class __$$UsbNameImplCopyWithImpl<$Res>
    extends _$UsbNameCopyWithImpl<$Res, _$UsbNameImpl>
    implements _$$UsbNameImplCopyWith<$Res> {
  __$$UsbNameImplCopyWithImpl(
      _$UsbNameImpl _value, $Res Function(_$UsbNameImpl) _then)
      : super(_value, _then);

  /// Create a copy of UsbName
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? manufacturerName = freezed,
    Object? productName = freezed,
    Object? serialNumber = freezed,
  }) {
    return _then(_$UsbNameImpl(
      manufacturerName: freezed == manufacturerName
          ? _value.manufacturerName
          : manufacturerName // ignore: cast_nullable_to_non_nullable
              as String?,
      productName: freezed == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UsbNameImpl implements _UsbName {
  const _$UsbNameImpl(
      {this.manufacturerName, this.productName, this.serialNumber});

  @override
  final String? manufacturerName;
  @override
  final String? productName;
  @override
  final String? serialNumber;

  @override
  String toString() {
    return 'UsbName(manufacturerName: $manufacturerName, productName: $productName, serialNumber: $serialNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsbNameImpl &&
            (identical(other.manufacturerName, manufacturerName) ||
                other.manufacturerName == manufacturerName) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.serialNumber, serialNumber) ||
                other.serialNumber == serialNumber));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, manufacturerName, productName, serialNumber);

  /// Create a copy of UsbName
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UsbNameImplCopyWith<_$UsbNameImpl> get copyWith =>
      __$$UsbNameImplCopyWithImpl<_$UsbNameImpl>(this, _$identity);
}

abstract class _UsbName implements UsbName {
  const factory _UsbName(
      {final String? manufacturerName,
      final String? productName,
      final String? serialNumber}) = _$UsbNameImpl;

  @override
  String? get manufacturerName;
  @override
  String? get productName;
  @override
  String? get serialNumber;

  /// Create a copy of UsbName
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UsbNameImplCopyWith<_$UsbNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UsbVersion {
  int get field0 => throw _privateConstructorUsedError;
  int get field1 => throw _privateConstructorUsedError;
  int get field2 => throw _privateConstructorUsedError;

  /// Create a copy of UsbVersion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UsbVersionCopyWith<UsbVersion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsbVersionCopyWith<$Res> {
  factory $UsbVersionCopyWith(
          UsbVersion value, $Res Function(UsbVersion) then) =
      _$UsbVersionCopyWithImpl<$Res, UsbVersion>;
  @useResult
  $Res call({int field0, int field1, int field2});
}

/// @nodoc
class _$UsbVersionCopyWithImpl<$Res, $Val extends UsbVersion>
    implements $UsbVersionCopyWith<$Res> {
  _$UsbVersionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UsbVersion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field0 = null,
    Object? field1 = null,
    Object? field2 = null,
  }) {
    return _then(_value.copyWith(
      field0: null == field0
          ? _value.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as int,
      field1: null == field1
          ? _value.field1
          : field1 // ignore: cast_nullable_to_non_nullable
              as int,
      field2: null == field2
          ? _value.field2
          : field2 // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UsbVersionImplCopyWith<$Res>
    implements $UsbVersionCopyWith<$Res> {
  factory _$$UsbVersionImplCopyWith(
          _$UsbVersionImpl value, $Res Function(_$UsbVersionImpl) then) =
      __$$UsbVersionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int field0, int field1, int field2});
}

/// @nodoc
class __$$UsbVersionImplCopyWithImpl<$Res>
    extends _$UsbVersionCopyWithImpl<$Res, _$UsbVersionImpl>
    implements _$$UsbVersionImplCopyWith<$Res> {
  __$$UsbVersionImplCopyWithImpl(
      _$UsbVersionImpl _value, $Res Function(_$UsbVersionImpl) _then)
      : super(_value, _then);

  /// Create a copy of UsbVersion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field0 = null,
    Object? field1 = null,
    Object? field2 = null,
  }) {
    return _then(_$UsbVersionImpl(
      field0: null == field0
          ? _value.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as int,
      field1: null == field1
          ? _value.field1
          : field1 // ignore: cast_nullable_to_non_nullable
              as int,
      field2: null == field2
          ? _value.field2
          : field2 // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UsbVersionImpl implements _UsbVersion {
  const _$UsbVersionImpl(
      {required this.field0, required this.field1, required this.field2});

  @override
  final int field0;
  @override
  final int field1;
  @override
  final int field2;

  @override
  String toString() {
    return 'UsbVersion(field0: $field0, field1: $field1, field2: $field2)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsbVersionImpl &&
            (identical(other.field0, field0) || other.field0 == field0) &&
            (identical(other.field1, field1) || other.field1 == field1) &&
            (identical(other.field2, field2) || other.field2 == field2));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0, field1, field2);

  /// Create a copy of UsbVersion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UsbVersionImplCopyWith<_$UsbVersionImpl> get copyWith =>
      __$$UsbVersionImplCopyWithImpl<_$UsbVersionImpl>(this, _$identity);
}

abstract class _UsbVersion implements UsbVersion {
  const factory _UsbVersion(
      {required final int field0,
      required final int field1,
      required final int field2}) = _$UsbVersionImpl;

  @override
  int get field0;
  @override
  int get field1;
  @override
  int get field2;

  /// Create a copy of UsbVersion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UsbVersionImplCopyWith<_$UsbVersionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
