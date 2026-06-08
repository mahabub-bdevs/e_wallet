// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContactModelImpl _$$ContactModelImplFromJson(Map<String, dynamic> json) =>
    _$ContactModelImpl(
      name: json['name'] as String,
      bankAccount: json['bank_account'] as String,
      imageUrl: json['image_url'] as String,
      isRecent: json['is_recent'] as bool,
    );

Map<String, dynamic> _$$ContactModelImplToJson(_$ContactModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'bank_account': instance.bankAccount,
      'image_url': instance.imageUrl,
      'is_recent': instance.isRecent,
    };
