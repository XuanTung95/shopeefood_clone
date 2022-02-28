import 'package:shopeefood_clone/widgets/grid/home_category_grid.dart';

import '../../utils/common_import.dart';

class AppImageNetworkWidget extends StatelessWidget {
  final String? url;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final Widget? loadingWidget;
  final Widget? errorWidget;

  const AppImageNetworkWidget(
      {Key? key, this.url, this.width, this.height, this.fit, this.loadingWidget, this.errorWidget})
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
            return loadingWidget ?? Image.asset(
              Assets
                  .images
                  .assetsImgPlaceholderItem
                  .path,
              fit: BoxFit.cover,
            );
          case LoadState.failed:
            return GestureDetector(
              child: errorWidget ?? Image.asset(
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
