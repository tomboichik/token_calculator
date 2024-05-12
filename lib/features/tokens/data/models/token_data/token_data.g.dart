// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TokenDataImpl _$$TokenDataImplFromJson(Map<String, dynamic> json) =>
    _$TokenDataImpl(
      prices: (json['prices'] as List<dynamic>)
          .map((e) =>
              (e as List<dynamic>).map((e) => (e as num).toDouble()).toList())
          .toList(),
    );

Map<String, dynamic> _$$TokenDataImplToJson(_$TokenDataImpl instance) =>
    <String, dynamic>{
      'prices': instance.prices,
    };
