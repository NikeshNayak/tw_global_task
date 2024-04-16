import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tw_global_task/features/image_gallery/presentation/bloc/get_pixabay_images_bloc.dart';

import 'bloc_observer.dart';
import 'config/routes/app_router.dart';
import 'config/theme/app_themes.dart';
import 'injection_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeDependencies();

  Bloc.observer = SimpleBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();

    return MultiBlocProvider(
      providers: [
        BlocProvider<GetPixabayImagesBloc>(create: (context) => sl()),
      ],
      child: MaterialApp(
        title: 'TW Global Task',
        debugShowCheckedModeBanner: false,
        theme: theme(),
        onGenerateRoute: appRouter.onGenerateRoute,
      ),
    );
  }
}
