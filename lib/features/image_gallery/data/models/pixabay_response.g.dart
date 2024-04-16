// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pixabay_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PixaBayResponseImpl _$$PixaBayResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PixaBayResponseImpl(
      total: json['total'] as int,
      totalHits: json['totalHits'] as int,
      hits: (json['hits'] as List<dynamic>)
          .map((e) => PixaBayImage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PixaBayResponseImplToJson(
        _$PixaBayResponseImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'totalHits': instance.totalHits,
      'hits': instance.hits,
    };
