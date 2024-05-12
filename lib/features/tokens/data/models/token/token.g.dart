// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TokenImpl _$$TokenImplFromJson(Map<String, dynamic> json) => _$TokenImpl(
      id: json['id'] as String,
      symbol: json['symbol'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      currentPrice: (json['current_price'] as num).toDouble(),
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$TokenImplToJson(_$TokenImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'symbol': instance.symbol,
      'name': instance.name,
      'description': instance.description,
      'current_price': instance.currentPrice,
      'image': instance.image,
    };
