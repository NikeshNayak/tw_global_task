part of 'get_pixabay_images_bloc.dart';

sealed class GetPixabayImagesState extends Equatable {
  final PixaBayResponse? pixaBayResponse;
  final DioException? exception;
  final String? message;

  const GetPixabayImagesState({
    this.pixaBayResponse,
    this.exception,
    this.message,
  });

  @override
  List<Object> get props => [];
}

class GetPixabayImagesInitialState extends GetPixabayImagesState {}

class GetPixabayImagesLoadingState extends GetPixabayImagesState {}

class GetPixabayImagesSuccessState extends GetPixabayImagesState {
  const GetPixabayImagesSuccessState(PixaBayResponse pixaBayResponse) : super(pixaBayResponse: pixaBayResponse);
}

class GetPixabayImagesFailedState extends GetPixabayImagesState {
  const GetPixabayImagesFailedState(PixaBayResponse pixaBayResponse) : super(pixaBayResponse: pixaBayResponse);
}

class GetPixabayImagesExceptionState extends GetPixabayImagesState {
  const GetPixabayImagesExceptionState(DioException exception) : super(exception: exception);
}
