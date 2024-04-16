import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tw_global_task/core/constants/constants.dart';
import 'package:tw_global_task/features/image_gallery/data/models/pixabay_image.dart';
import 'package:tw_global_task/features/image_gallery/presentation/bloc/get_pixabay_images_bloc.dart';
import 'package:tw_global_task/responsive_layout.dart';

import 'full_screen_image_widget.dart';

class ImageGalleryScreen extends StatefulWidget {
  const ImageGalleryScreen({super.key});

  @override
  State<ImageGalleryScreen> createState() => _ImageGalleryScreenState();
}

class _ImageGalleryScreenState extends State<ImageGalleryScreen> {
  bool _isInit = true;

  List<PixaBayImage> _imageList = [];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_isInit) {
      BlocProvider.of<GetPixabayImagesBloc>(context).add(const GetPixabayImagesFetchEvent());
      _isInit = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    final noOfColumns = ResponsiveLayout.isSmallScreen(context)
        ? 2
        : ResponsiveLayout.isMediumScreen(context)
            ? 3
            : 4;
    return Scaffold(
      body: BlocConsumer<GetPixabayImagesBloc, GetPixabayImagesState>(
        listener: (context, state) {
          if (state is GetPixabayImagesSuccessState) {
            _imageList = state.pixaBayResponse?.hits ?? [];
          } else if (state is GetPixabayImagesExceptionState) {
            showSnackMessage(
              context: context,
              title: 'Error',
              text: state.exception?.message ?? '',
              icon: Icons.error,
              color: Colors.red.shade600,
              seconds: 3,
              isFloating: true,
            );
          }
        },
        builder: (context, state) {
          return AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            child: state is GetPixabayImagesLoadingState
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : _imageList.length > 0
                    ? GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: noOfColumns,
                          mainAxisSpacing: 2,
                          crossAxisSpacing: 2,
                        ),
                        itemBuilder: (context, index) {
                          final image = _imageList[index];
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => FullScreenImage(
                                    imageUrl: image.largeImageURL,
                                    tag: image.id.toString(),
                                  ),
                                ),
                              );
                            },
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Hero(
                                  tag: image.id.toString(),
                                  child: CachedNetworkImage(
                                    imageUrl: image.largeImageURL,
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                    height: double.infinity,
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.8),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  margin: const EdgeInsets.all(8.0),
                                  padding: const EdgeInsets.all(8.0),
                                  child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.favorite,
                                              color: Colors.pink,
                                            ),
                                            const SizedBox(width: 5),
                                            Text(
                                              formatCounts(image.likes),
                                              style: const TextStyle(
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(width: 20),
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.remove_red_eye,
                                              color: Colors.blue,
                                            ),
                                            const SizedBox(width: 5),
                                            Text(
                                              formatCounts(image.views),
                                              style: const TextStyle(
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                        itemCount: _imageList.length,
                      )
                    : const Center(
                        child: Text('Images not found'),
                      ),
          );
        },
      ),
    );
  }
}
