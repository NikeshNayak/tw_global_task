// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pixabay_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PixaBayImageImpl _$$PixaBayImageImplFromJson(Map<String, dynamic> json) =>
    _$PixaBayImageImpl(
      id: json['id'] as int,
      views: json['views'] as int,
      likes: json['likes'] as int,
      largeImageURL: json['largeImageURL'] as String,
    );

Map<String, dynamic> _$$PixaBayImageImplToJson(_$PixaBayImageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'views': instance.views,
      'likes': instance.likes,
      'largeImageURL': instance.largeImageURL,
    };
