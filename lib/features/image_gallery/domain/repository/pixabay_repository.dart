import 'package:tw_global_task/features/image_gallery/data/models/pixabay_response.dart';

import '../../../../core/resources/data_state.dart';

abstract class PixaBayRepository {
  Future<DataState<PixaBayResponse>> getImagesList();
}
