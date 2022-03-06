import 'package:shopeefood_clone/widgets/grid/home_category_grid.dart';

import '../../utils/common_import.dart';

class AppImageNetworkWidget extends StatelessWidget {
  final String? url;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final Widget? loadingWidget;
  final Widget? errorWidget;
  /// If non-null, this color is blended with each image pixel using [colorBlendMode].
  final Color? color;
  final BoxShape? shape;
  final Alignment alignment;

  const AppImageNetworkWidget(
      {Key? key, this.url, this.width, this.height, this.fit, this.loadingWidget, this.errorWidget, this.color, this.shape, this.alignment = Alignment.center,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExtendedImage.network(
      url ?? '',
      width: width,
      height: height,
      cache: true,
      color: color,
      fit: fit,
      shape: shape,
      alignment: alignment,
      loadStateChanged: (ExtendedImageState state) {
        switch (state.extendedImageLoadState) {
          case LoadState.loading:
            return loadingWidget ?? const SizedBox();
          case LoadState.failed:
            return GestureDetector(
              child: errorWidget ?? Image.asset(
                Assets
                    .images
                    .assetsImgPlaceholderItem
                    .path,
                fit: BoxFit.fill,
              ),
              onTap: () {
                state.reLoadImage();
              },
            );
          case LoadState.completed:
            break;
        }
        return null;
      },
    );
  }
}