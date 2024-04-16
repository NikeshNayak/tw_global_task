import 'package:tw_global_task/features/image_gallery/data/models/pixabay_response.dart';

import '../../../../core/resources/data_state.dart';
import '../repository/pixabay_repository.dart';

class PixaBayUseCase {
  final PixaBayRepository _pixaBayRepository;

  PixaBayUseCase(this._pixaBayRepository);

  Future<DataState<PixaBayResponse>> getImagesList() {
    return _pixaBayRepository.getImagesList();
  }
}
