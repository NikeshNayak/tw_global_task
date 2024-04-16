import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:tw_global_task/features/image_gallery/data/data_sources/remote/image_gallery_remote_api_service.dart';
import 'package:tw_global_task/features/image_gallery/data/repository/pixabay_repository_impl.dart';
import 'package:tw_global_task/features/image_gallery/domain/repository/pixabay_repository.dart';
import 'package:tw_global_task/features/image_gallery/domain/usecases/pixabay_usecase.dart';
import 'package:tw_global_task/features/image_gallery/presentation/bloc/get_pixabay_images_bloc.dart';

GetIt sl = GetIt.instance;

Future<void> initializeDependencies() async {
  //Dio
  Dio dio = Dio();
  sl.registerSingleton<Dio>(dio);

  //Dependencies
  sl.registerSingleton<ImageGalleryApiService>(ImageGalleryApiService(sl()));

  //Repositories
  sl.registerSingleton<PixaBayRepository>(PixaBayRepositoryImpl(sl()));

  //UseCases
  sl.registerSingleton<PixaBayUseCase>(PixaBayUseCase(sl()));

  //BLoCs
  sl.registerFactory(() => GetPixabayImagesBloc(sl()));
}
