// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PaymentItem _$PaymentItemFromJson(Map<String, dynamic> json) {
  return _PaymentItem.fromJson(json);
}

/// @nodoc
mixin _$PaymentItem {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get iconPath => throw _privateConstructorUsedError;
  int get iconColor => throw _privateConstructorUsedError;

  /// Serializes this PaymentItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentItemCopyWith<PaymentItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentItemCopyWith<$Res> {
  factory $PaymentItemCopyWith(
    PaymentItem value,
    $Res Function(PaymentItem) then,
  ) = _$PaymentItemCopyWithImpl<$Res, PaymentItem>;
  @useResult
  $Res call({String id, String title, String iconPath, int iconColor});
}

/// @nodoc
class _$PaymentItemCopyWithImpl<$Res, $Val extends PaymentItem>
    implements $PaymentItemCopyWith<$Res> {
  _$PaymentItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? iconPath = null,
    Object? iconColor = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            iconPath: null == iconPath
                ? _value.iconPath
                : iconPath // ignore: cast_nullable_to_non_nullable
                      as String,
            iconColor: null == iconColor
                ? _value.iconColor
                : iconColor // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PaymentItemImplCopyWith<$Res>
    implements $PaymentItemCopyWith<$Res> {
  factory _$$PaymentItemImplCopyWith(
    _$PaymentItemImpl value,
    $Res Function(_$PaymentItemImpl) then,
  ) = __$$PaymentItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, String iconPath, int iconColor});
}

/// @nodoc
class __$$PaymentItemImplCopyWithImpl<$Res>
    extends _$PaymentItemCopyWithImpl<$Res, _$PaymentItemImpl>
    implements _$$PaymentItemImplCopyWith<$Res> {
  __$$PaymentItemImplCopyWithImpl(
    _$PaymentItemImpl _value,
    $Res Function(_$PaymentItemImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PaymentItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? iconPath = null,
    Object? iconColor = null,
  }) {
    return _then(
      _$PaymentItemImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        iconPath: null == iconPath
            ? _value.iconPath
            : iconPath // ignore: cast_nullable_to_non_nullable
                  as String,
        iconColor: null == iconColor
            ? _value.iconColor
            : iconColor // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentItemImpl implements _PaymentItem {
  const _$PaymentItemImpl({
    required this.id,
    required this.title,
    required this.iconPath,
    this.iconColor = 0xFF000000,
  });

  factory _$PaymentItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentItemImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String iconPath;
  @override
  @JsonKey()
  final int iconColor;

  @override
  String toString() {
    return 'PaymentItem(id: $id, title: $title, iconPath: $iconPath, iconColor: $iconColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.iconPath, iconPath) ||
                other.iconPath == iconPath) &&
            (identical(other.iconColor, iconColor) ||
                other.iconColor == iconColor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, iconPath, iconColor);

  /// Create a copy of PaymentItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentItemImplCopyWith<_$PaymentItemImpl> get copyWith =>
      __$$PaymentItemImplCopyWithImpl<_$PaymentItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentItemImplToJson(this);
  }
}

abstract class _PaymentItem implements PaymentItem {
  const factory _PaymentItem({
    required final String id,
    required final String title,
    required final String iconPath,
    final int iconColor,
  }) = _$PaymentItemImpl;

  factory _PaymentItem.fromJson(Map<String, dynamic> json) =
      _$PaymentItemImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get iconPath;
  @override
  int get iconColor;

  /// Create a copy of PaymentItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentItemImplCopyWith<_$PaymentItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PaymentListModel _$PaymentListModelFromJson(Map<String, dynamic> json) {
  return _PaymentListModel.fromJson(json);
}

/// @nodoc
mixin _$PaymentListModel {
  List<PaymentItem> get payments => throw _privateConstructorUsedError;

  /// Serializes this PaymentListModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentListModelCopyWith<PaymentListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentListModelCopyWith<$Res> {
  factory $PaymentListModelCopyWith(
    PaymentListModel value,
    $Res Function(PaymentListModel) then,
  ) = _$PaymentListModelCopyWithImpl<$Res, PaymentListModel>;
  @useResult
  $Res call({List<PaymentItem> payments});
}

/// @nodoc
class _$PaymentListModelCopyWithImpl<$Res, $Val extends PaymentListModel>
    implements $PaymentListModelCopyWith<$Res> {
  _$PaymentListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? payments = null}) {
    return _then(
      _value.copyWith(
            payments: null == payments
                ? _value.payments
                : payments // ignore: cast_nullable_to_non_nullable
                      as List<PaymentItem>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PaymentListModelImplCopyWith<$Res>
    implements $PaymentListModelCopyWith<$Res> {
  factory _$$PaymentListModelImplCopyWith(
    _$PaymentListModelImpl value,
    $Res Function(_$PaymentListModelImpl) then,
  ) = __$$PaymentListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PaymentItem> payments});
}

/// @nodoc
class __$$PaymentListModelImplCopyWithImpl<$Res>
    extends _$PaymentListModelCopyWithImpl<$Res, _$PaymentListModelImpl>
    implements _$$PaymentListModelImplCopyWith<$Res> {
  __$$PaymentListModelImplCopyWithImpl(
    _$PaymentListModelImpl _value,
    $Res Function(_$PaymentListModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PaymentListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? payments = null}) {
    return _then(
      _$PaymentListModelImpl(
        payments: null == payments
            ? _value._payments
            : payments // ignore: cast_nullable_to_non_nullable
                  as List<PaymentItem>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentListModelImpl implements _PaymentListModel {
  const _$PaymentListModelImpl({required final List<PaymentItem> payments})
    : _payments = payments;

  factory _$PaymentListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentListModelImplFromJson(json);

  final List<PaymentItem> _payments;
  @override
  List<PaymentItem> get payments {
    if (_payments is EqualUnmodifiableListView) return _payments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payments);
  }

  @override
  String toString() {
    return 'PaymentListModel(payments: $payments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentListModelImpl &&
            const DeepCollectionEquality().equals(other._payments, _payments));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_payments));

  /// Create a copy of PaymentListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentListModelImplCopyWith<_$PaymentListModelImpl> get copyWith =>
      __$$PaymentListModelImplCopyWithImpl<_$PaymentListModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentListModelImplToJson(this);
  }
}

abstract class _PaymentListModel implements PaymentListModel {
  const factory _PaymentListModel({required final List<PaymentItem> payments}) =
      _$PaymentListModelImpl;

  factory _PaymentListModel.fromJson(Map<String, dynamic> json) =
      _$PaymentListModelImpl.fromJson;

  @override
  List<PaymentItem> get payments;

  /// Create a copy of PaymentListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentListModelImplCopyWith<_$PaymentListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
