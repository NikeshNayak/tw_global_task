import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:tw_global_task/features/image_gallery/data/models/pixabay_response.dart';

import '../../../../core/resources/data_state.dart';
import '../../domain/usecases/pixabay_usecase.dart';

part 'get_pixabay_images_event.dart';
part 'get_pixabay_images_state.dart';

class GetPixabayImagesBloc extends Bloc<GetPixabayImagesEvent, GetPixabayImagesState> {
  final PixaBayUseCase _pixaBayUseCase;

  GetPixabayImagesBloc(this._pixaBayUseCase) : super(GetPixabayImagesInitialState()) {
    on<GetPixabayImagesFetchEvent>(_getPixabayImagesFetchEvent);
  }

  FutureOr<void> _getPixabayImagesFetchEvent(GetPixabayImagesFetchEvent event, Emitter<GetPixabayImagesState> emit) async {
    emit(GetPixabayImagesLoadingState());

    final dataState = await _pixaBayUseCase.getImagesList();

    if (dataState is DataSuccess && dataState.data!.hits.isNotEmpty) {
      emit(GetPixabayImagesSuccessState(dataState.data!));
    }

    if (dataState is DataFailed) {
      emit(GetPixabayImagesFailedState(dataState.data!));
    }

    if (dataState is DataDioException) {
      print(dataState.exception);
      emit(GetPixabayImagesExceptionState(dataState.exception!));
    }
  }
}
