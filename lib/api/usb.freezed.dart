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
mixin _$UsbInfo {
  int get busNumber => throw _privateConstructorUsedError;
  int get address => throw _privateConstructorUsedError;
  int get vendorId => throw _privateConstructorUsedError;
  int get productId => throw _privateConstructorUsedError;
  int get numConfigurations => throw _privateConstructorUsedError;
  int get maxPacketSize => throw _privateConstructorUsedError;
  int get protocolCode => throw _privateConstructorUsedError;
  int get subClassCode => throw _privateConstructorUsedError;
  int get classCode => throw _privateConstructorUsedError;
  int? get serialNumberStringIndex => throw _privateConstructorUsedError;
  int? get productStringIndex => throw _privateConstructorUsedError;
  int? get manufacturerStringIndex => throw _privateConstructorUsedError;
  UsbVersion get usbVersion => throw _privateConstructorUsedError;
  UsbVersion get deviceVersion => throw _privateConstructorUsedError;
  int get descriptorType => throw _privateConstructorUsedError;
  int get length => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UsbInfoCopyWith<UsbInfo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsbInfoCopyWith<$Res> {
  factory $UsbInfoCopyWith(UsbInfo value, $Res Function(UsbInfo) then) =
      _$UsbInfoCopyWithImpl<$Res, UsbInfo>;
  @useResult
  $Res call(
      {int busNumber,
      int address,
      int vendorId,
      int productId,
      int numConfigurations,
      int maxPacketSize,
      int protocolCode,
      int subClassCode,
      int classCode,
      int? serialNumberStringIndex,
      int? productStringIndex,
      int? manufacturerStringIndex,
      UsbVersion usbVersion,
      UsbVersion deviceVersion,
      int descriptorType,
      int length});

  $UsbVersionCopyWith<$Res> get usbVersion;
  $UsbVersionCopyWith<$Res> get deviceVersion;
}

/// @nodoc
class _$UsbInfoCopyWithImpl<$Res, $Val extends UsbInfo>
    implements $UsbInfoCopyWith<$Res> {
  _$UsbInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? busNumber = null,
    Object? address = null,
    Object? vendorId = null,
    Object? productId = null,
    Object? numConfigurations = null,
    Object? maxPacketSize = null,
    Object? protocolCode = null,
    Object? subClassCode = null,
    Object? classCode = null,
    Object? serialNumberStringIndex = freezed,
    Object? productStringIndex = freezed,
    Object? manufacturerStringIndex = freezed,
    Object? usbVersion = null,
    Object? deviceVersion = null,
    Object? descriptorType = null,
    Object? length = null,
  }) {
    return _then(_value.copyWith(
      busNumber: null == busNumber
          ? _value.busNumber
          : busNumber // ignore: cast_nullable_to_non_nullable
              as int,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as int,
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as int,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      numConfigurations: null == numConfigurations
          ? _value.numConfigurations
          : numConfigurations // ignore: cast_nullable_to_non_nullable
              as int,
      maxPacketSize: null == maxPacketSize
          ? _value.maxPacketSize
          : maxPacketSize // ignore: cast_nullable_to_non_nullable
              as int,
      protocolCode: null == protocolCode
          ? _value.protocolCode
          : protocolCode // ignore: cast_nullable_to_non_nullable
              as int,
      subClassCode: null == subClassCode
          ? _value.subClassCode
          : subClassCode // ignore: cast_nullable_to_non_nullable
              as int,
      classCode: null == classCode
          ? _value.classCode
          : classCode // ignore: cast_nullable_to_non_nullable
              as int,
      serialNumberStringIndex: freezed == serialNumberStringIndex
          ? _value.serialNumberStringIndex
          : serialNumberStringIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      productStringIndex: freezed == productStringIndex
          ? _value.productStringIndex
          : productStringIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      manufacturerStringIndex: freezed == manufacturerStringIndex
          ? _value.manufacturerStringIndex
          : manufacturerStringIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      usbVersion: null == usbVersion
          ? _value.usbVersion
          : usbVersion // ignore: cast_nullable_to_non_nullable
              as UsbVersion,
      deviceVersion: null == deviceVersion
          ? _value.deviceVersion
          : deviceVersion // ignore: cast_nullable_to_non_nullable
              as UsbVersion,
      descriptorType: null == descriptorType
          ? _value.descriptorType
          : descriptorType // ignore: cast_nullable_to_non_nullable
              as int,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UsbVersionCopyWith<$Res> get usbVersion {
    return $UsbVersionCopyWith<$Res>(_value.usbVersion, (value) {
      return _then(_value.copyWith(usbVersion: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UsbVersionCopyWith<$Res> get deviceVersion {
    return $UsbVersionCopyWith<$Res>(_value.deviceVersion, (value) {
      return _then(_value.copyWith(deviceVersion: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UsbInfoImplCopyWith<$Res> implements $UsbInfoCopyWith<$Res> {
  factory _$$UsbInfoImplCopyWith(
          _$UsbInfoImpl value, $Res Function(_$UsbInfoImpl) then) =
      __$$UsbInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int busNumber,
      int address,
      int vendorId,
      int productId,
      int numConfigurations,
      int maxPacketSize,
      int protocolCode,
      int subClassCode,
      int classCode,
      int? serialNumberStringIndex,
      int? productStringIndex,
      int? manufacturerStringIndex,
      UsbVersion usbVersion,
      UsbVersion deviceVersion,
      int descriptorType,
      int length});

  @override
  $UsbVersionCopyWith<$Res> get usbVersion;
  @override
  $UsbVersionCopyWith<$Res> get deviceVersion;
}

/// @nodoc
class __$$UsbInfoImplCopyWithImpl<$Res>
    extends _$UsbInfoCopyWithImpl<$Res, _$UsbInfoImpl>
    implements _$$UsbInfoImplCopyWith<$Res> {
  __$$UsbInfoImplCopyWithImpl(
      _$UsbInfoImpl _value, $Res Function(_$UsbInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? busNumber = null,
    Object? address = null,
    Object? vendorId = null,
    Object? productId = null,
    Object? numConfigurations = null,
    Object? maxPacketSize = null,
    Object? protocolCode = null,
    Object? subClassCode = null,
    Object? classCode = null,
    Object? serialNumberStringIndex = freezed,
    Object? productStringIndex = freezed,
    Object? manufacturerStringIndex = freezed,
    Object? usbVersion = null,
    Object? deviceVersion = null,
    Object? descriptorType = null,
    Object? length = null,
  }) {
    return _then(_$UsbInfoImpl(
      busNumber: null == busNumber
          ? _value.busNumber
          : busNumber // ignore: cast_nullable_to_non_nullable
              as int,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as int,
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as int,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      numConfigurations: null == numConfigurations
          ? _value.numConfigurations
          : numConfigurations // ignore: cast_nullable_to_non_nullable
              as int,
      maxPacketSize: null == maxPacketSize
          ? _value.maxPacketSize
          : maxPacketSize // ignore: cast_nullable_to_non_nullable
              as int,
      protocolCode: null == protocolCode
          ? _value.protocolCode
          : protocolCode // ignore: cast_nullable_to_non_nullable
              as int,
      subClassCode: null == subClassCode
          ? _value.subClassCode
          : subClassCode // ignore: cast_nullable_to_non_nullable
              as int,
      classCode: null == classCode
          ? _value.classCode
          : classCode // ignore: cast_nullable_to_non_nullable
              as int,
      serialNumberStringIndex: freezed == serialNumberStringIndex
          ? _value.serialNumberStringIndex
          : serialNumberStringIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      productStringIndex: freezed == productStringIndex
          ? _value.productStringIndex
          : productStringIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      manufacturerStringIndex: freezed == manufacturerStringIndex
          ? _value.manufacturerStringIndex
          : manufacturerStringIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      usbVersion: null == usbVersion
          ? _value.usbVersion
          : usbVersion // ignore: cast_nullable_to_non_nullable
              as UsbVersion,
      deviceVersion: null == deviceVersion
          ? _value.deviceVersion
          : deviceVersion // ignore: cast_nullable_to_non_nullable
              as UsbVersion,
      descriptorType: null == descriptorType
          ? _value.descriptorType
          : descriptorType // ignore: cast_nullable_to_non_nullable
              as int,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UsbInfoImpl implements _UsbInfo {
  const _$UsbInfoImpl(
      {required this.busNumber,
      required this.address,
      required this.vendorId,
      required this.productId,
      required this.numConfigurations,
      required this.maxPacketSize,
      required this.protocolCode,
      required this.subClassCode,
      required this.classCode,
      this.serialNumberStringIndex,
      this.productStringIndex,
      this.manufacturerStringIndex,
      required this.usbVersion,
      required this.deviceVersion,
      required this.descriptorType,
      required this.length});

  @override
  final int busNumber;
  @override
  final int address;
  @override
  final int vendorId;
  @override
  final int productId;
  @override
  final int numConfigurations;
  @override
  final int maxPacketSize;
  @override
  final int protocolCode;
  @override
  final int subClassCode;
  @override
  final int classCode;
  @override
  final int? serialNumberStringIndex;
  @override
  final int? productStringIndex;
  @override
  final int? manufacturerStringIndex;
  @override
  final UsbVersion usbVersion;
  @override
  final UsbVersion deviceVersion;
  @override
  final int descriptorType;
  @override
  final int length;

  @override
  String toString() {
    return 'UsbInfo(busNumber: $busNumber, address: $address, vendorId: $vendorId, productId: $productId, numConfigurations: $numConfigurations, maxPacketSize: $maxPacketSize, protocolCode: $protocolCode, subClassCode: $subClassCode, classCode: $classCode, serialNumberStringIndex: $serialNumberStringIndex, productStringIndex: $productStringIndex, manufacturerStringIndex: $manufacturerStringIndex, usbVersion: $usbVersion, deviceVersion: $deviceVersion, descriptorType: $descriptorType, length: $length)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsbInfoImpl &&
            (identical(other.busNumber, busNumber) ||
                other.busNumber == busNumber) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.vendorId, vendorId) ||
                other.vendorId == vendorId) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.numConfigurations, numConfigurations) ||
                other.numConfigurations == numConfigurations) &&
            (identical(other.maxPacketSize, maxPacketSize) ||
                other.maxPacketSize == maxPacketSize) &&
            (identical(other.protocolCode, protocolCode) ||
                other.protocolCode == protocolCode) &&
            (identical(other.subClassCode, subClassCode) ||
                other.subClassCode == subClassCode) &&
            (identical(other.classCode, classCode) ||
                other.classCode == classCode) &&
            (identical(
                    other.serialNumberStringIndex, serialNumberStringIndex) ||
                other.serialNumberStringIndex == serialNumberStringIndex) &&
            (identical(other.productStringIndex, productStringIndex) ||
                other.productStringIndex == productStringIndex) &&
            (identical(
                    other.manufacturerStringIndex, manufacturerStringIndex) ||
                other.manufacturerStringIndex == manufacturerStringIndex) &&
            (identical(other.usbVersion, usbVersion) ||
                other.usbVersion == usbVersion) &&
            (identical(other.deviceVersion, deviceVersion) ||
                other.deviceVersion == deviceVersion) &&
            (identical(other.descriptorType, descriptorType) ||
                other.descriptorType == descriptorType) &&
            (identical(other.length, length) || other.length == length));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      busNumber,
      address,
      vendorId,
      productId,
      numConfigurations,
      maxPacketSize,
      protocolCode,
      subClassCode,
      classCode,
      serialNumberStringIndex,
      productStringIndex,
      manufacturerStringIndex,
      usbVersion,
      deviceVersion,
      descriptorType,
      length);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UsbInfoImplCopyWith<_$UsbInfoImpl> get copyWith =>
      __$$UsbInfoImplCopyWithImpl<_$UsbInfoImpl>(this, _$identity);
}

abstract class _UsbInfo implements UsbInfo {
  const factory _UsbInfo(
      {required final int busNumber,
      required final int address,
      required final int vendorId,
      required final int productId,
      required final int numConfigurations,
      required final int maxPacketSize,
      required final int protocolCode,
      required final int subClassCode,
      required final int classCode,
      final int? serialNumberStringIndex,
      final int? productStringIndex,
      final int? manufacturerStringIndex,
      required final UsbVersion usbVersion,
      required final UsbVersion deviceVersion,
      required final int descriptorType,
      required final int length}) = _$UsbInfoImpl;

  @override
  int get busNumber;
  @override
  int get address;
  @override
  int get vendorId;
  @override
  int get productId;
  @override
  int get numConfigurations;
  @override
  int get maxPacketSize;
  @override
  int get protocolCode;
  @override
  int get subClassCode;
  @override
  int get classCode;
  @override
  int? get serialNumberStringIndex;
  @override
  int? get productStringIndex;
  @override
  int? get manufacturerStringIndex;
  @override
  UsbVersion get usbVersion;
  @override
  UsbVersion get deviceVersion;
  @override
  int get descriptorType;
  @override
  int get length;
  @override
  @JsonKey(ignore: true)
  _$$UsbInfoImplCopyWith<_$UsbInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UsbVersion {
  int get field0 => throw _privateConstructorUsedError;
  int get field1 => throw _privateConstructorUsedError;
  int get field2 => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
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
  @override
  @JsonKey(ignore: true)
  _$$UsbVersionImplCopyWith<_$UsbVersionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
