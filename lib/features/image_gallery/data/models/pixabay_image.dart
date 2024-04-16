import 'package:freezed_annotation/freezed_annotation.dart';

part 'pixabay_image.freezed.dart';

part 'pixabay_image.g.dart';

@freezed
class PixaBayImage with _$PixaBayImage {
  const factory PixaBayImage({
    required int id,
    required int views,
    required int likes,
    required String largeImageURL,
  }) = _PixaBayImage;

  factory PixaBayImage.fromJson(Map<String, dynamic> json) => _$PixaBayImageFromJson(json);
}
