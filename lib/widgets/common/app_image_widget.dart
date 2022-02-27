import 'package:shopeefood_clone/widgets/grid/home_category_grid.dart';

import '../../utils/common_import.dart';

class AppImageNetworkWidget extends StatelessWidget {
  final String? url;
  final double? width;
  final double? height;
  final BoxFit? fit;

  const AppImageNetworkWidget(
      {Key? key, this.url, this.width, this.height, this.fit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExtendedImage.network(
      url ?? '',
      width: width,
      height: height,
      cache: false,
      fit: fit,
      loadStateChanged: (ExtendedImageState state) {
        switch (state.extendedImageLoadState) {
          case LoadState.loading:
            return Image.asset(
              Assets
                  .images
                  .nodeModulesShopeernCommonimagesAssetsCommonimageLoadingplaceholder2img
                  .path,
              fit: BoxFit.fill,
            );
          case LoadState.failed:
            return GestureDetector(
              child: Image.asset(
                Assets
                    .images
                    .nodeModulesShopeernCommonimagesAssetsCommonimageLoadingplaceholderimg
                    .path,
                fit: BoxFit.fill,
              ),
              onTap: () {
                state.reLoadImage();
              },
            );
            break;
          case LoadState.completed:
            break;
        }
        return null;
      },
    );
  }
}
