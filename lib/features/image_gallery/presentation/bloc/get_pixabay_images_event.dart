part of 'get_pixabay_images_bloc.dart';

sealed class GetPixabayImagesEvent extends Equatable {
  const GetPixabayImagesEvent();

  @override
  List<Object?> get props => [];
}

class GetPixabayImagesFetchEvent extends GetPixabayImagesEvent {
  const GetPixabayImagesFetchEvent();
}
