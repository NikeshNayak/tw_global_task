import 'package:freezed_annotation/freezed_annotation.dart';

import 'pixabay_image.dart';

part 'pixabay_response.freezed.dart';

part 'pixabay_response.g.dart';

@freezed
class PixaBayResponse with _$PixaBayResponse {
  const factory PixaBayResponse({
    required int total,
    required int totalHits,
    required List<PixaBayImage> hits,
  }) = _PixaBayResponse;

  factory PixaBayResponse.fromJson(Map<String, dynamic> json) => _$PixaBayResponseFromJson(json);
}
