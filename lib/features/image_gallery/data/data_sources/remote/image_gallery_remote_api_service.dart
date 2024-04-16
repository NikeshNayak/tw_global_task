import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:tw_global_task/features/image_gallery/data/models/pixabay_response.dart';

import '../../../../../core/constants/constants.dart';

part 'image_gallery_remote_api_service.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class ImageGalleryApiService {
  factory ImageGalleryApiService(Dio dio) = _ImageGalleryApiService;

  @GET('/api/')
  Future<HttpResponse<PixaBayResponse>> getImages({
    @Query('key') required String key,
    @Query('q') required String query,
    @Query('image_type') required String imageType,
  });
}
