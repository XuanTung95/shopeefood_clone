import 'package:shopeefood_clone/vm/global/state_me.dart';
import 'package:shopeefood_clone/widgets/common/app_image_widget.dart';

import '../../utils/common_import.dart';

class UserAvatarWidget extends ConsumerWidget {
  final double size;
  final bool verified;

  const UserAvatarWidget({Key? key, this.size = 60, this.verified = true})
      : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final state = ref.watch(StateMe.provider);
    return Stack(
      children: [
        SizedBox(
          width: size,
          height: size,
          child: ClipOval(
            child: AppImageNetworkWidget(
              url: ImageUtils.getIconImage(state.userProfile?.photos),
              loadingWidget: const DefaultUserAvatar(),
              errorWidget: const DefaultUserAvatar(),
            ),
          ),
        ),
        if (verified)
          Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(
                Assets.images.assetsImgMeVerified.path,
                width: 20,
              ))
      ],
    );
  }
}

class DefaultUserAvatar extends StatelessWidget {
  const DefaultUserAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Assets.images.assetsImgMeIcMeAvatarPlaceholder.path,
      fit: BoxFit.cover,
    );
  }
}