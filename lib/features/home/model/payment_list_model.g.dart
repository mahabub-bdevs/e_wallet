// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentItemImpl _$$PaymentItemImplFromJson(Map<String, dynamic> json) =>
    _$PaymentItemImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      iconPath: json['iconPath'] as String,
      iconColor: (json['iconColor'] as num?)?.toInt() ?? 0xFF000000,
    );

Map<String, dynamic> _$$PaymentItemImplToJson(_$PaymentItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'iconPath': instance.iconPath,
      'iconColor': instance.iconColor,
    };

_$PaymentListModelImpl _$$PaymentListModelImplFromJson(
  Map<String, dynamic> json,
) => _$PaymentListModelImpl(
  payments: (json['payments'] as List<dynamic>)
      .map((e) => PaymentItem.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$PaymentListModelImplToJson(
  _$PaymentListModelImpl instance,
) => <String, dynamic>{'payments': instance.payments};
