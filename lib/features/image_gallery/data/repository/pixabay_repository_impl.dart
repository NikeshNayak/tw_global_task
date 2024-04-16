import 'dart:io';

import 'package:dio/dio.dart';
import 'package:tw_global_task/core/resources/data_state.dart';
import 'package:tw_global_task/features/image_gallery/data/models/pixabay_response.dart';
import 'package:tw_global_task/features/image_gallery/domain/repository/pixabay_repository.dart';

import '../../../../core/constants/constants.dart';
import '../data_sources/remote/image_gallery_remote_api_service.dart';

class PixaBayRepositoryImpl extends PixaBayRepository {
  final ImageGalleryApiService _apiService;

  PixaBayRepositoryImpl(this._apiService);

  @override
  Future<DataState<PixaBayResponse>> getImagesList() async {
    try {
      final httpResponse = await _apiService.getImages(key: pixabayAPIKey, query: 'yellow', imageType: 'photo');

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        if (httpResponse.data.totalHits > 0) {
          return DataSuccess(httpResponse.data);
        } else {
          return DataFailed(httpResponse.data);
        }
      } else {
        return DataDioException(
          DioException(
            error: httpResponse.response.statusMessage,
            response: httpResponse.response,
            type: DioExceptionType.badResponse,
            requestOptions: httpResponse.response.requestOptions,
          ),
        );
      }
    } on DioException catch (err) {
      return DataDioException(err);
    }
  }
}
