import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopeefood_clone/utils/common_import.dart';

import '../../vm/global/state_home_bottom_nav.dart';

class HomeBottomNavigationBar extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ref) {
    var state = ref.watch(StateHomeBottomNav.provider);
    var appColor = AppColor(context);
    return Container(
      color: appColor.bottomBarBg,
      child: Row(
        children: [
          Expanded(
            child: HomeBotNavTabItem(
              callback: () {
                state.selected = HomeBottomNavName.HOME;
              },
              isActive: state.selected == HomeBottomNavName.HOME,
              iconWidget: BottomNavTabIcon(
                isActive: state.selected == HomeBottomNavName.HOME,
                iconAssetInactive:
                    Assets.images.assetsImgTabbarIcTabBarHomeNormal.path,
                iconAssetActive:
                    Assets.images.assetsImgTabbarIcTabBarHomeSelected.path,
              ),
              text: 'Home',
            ),
          ),
          Expanded(
            child: HomeBotNavTabItem(
              callback: () {
                state.selected = HomeBottomNavName.MY_ORDER;
              },
              isActive: state.selected == HomeBottomNavName.MY_ORDER,
              iconWidget: BottomNavTabIcon(
                isActive: state.selected == HomeBottomNavName.MY_ORDER,
                iconAssetInactive:
                Assets.images.assetsImgTabbarIcTabBarOrderNormal.path,
                iconAssetActive:
                Assets.images.assetsImgTabbarIcTabBarOrderSelected.path,
              ),
              text: 'My Orders',
            ),
          ),
          Expanded(
            child: HomeBotNavTabItem(
              callback: () {
                state.selected = HomeBottomNavName.LIKES;
              },
              isActive: state.selected == HomeBottomNavName.LIKES,
              iconWidget: BottomNavTabIcon(
                isActive: state.selected == HomeBottomNavName.LIKES,
                iconAssetInactive:
                Assets.images.assetsImgTabbarIcTabBarSaveNormal.path,
                iconAssetActive:
                Assets.images.assetsImgTabbarIcTabBarSaveSelected.path,
              ),
              text: 'Likes',
            ),
          ),
          Expanded(
            child: HomeBotNavTabItem(
              callback: () {
                state.selected = HomeBottomNavName.NOTIFICATION;
              },
              isActive: state.selected == HomeBottomNavName.NOTIFICATION,
              iconWidget: BottomNavTabIcon(
                isActive: state.selected == HomeBottomNavName.NOTIFICATION,
                iconAssetInactive:
                Assets.images.nodeModulesShopeernCommonimagesAssetsCommoniconNotificationicon.path,
                iconAssetActive:
                Assets.images.nodeModulesShopeernCommonimagesAssetsCommoniconNotificationiconSelected.path,
              ),
              text: 'Notifications',
            ),
          ),
          Expanded(
            child: HomeBotNavTabItem(
              callback: () {
                state.selected = HomeBottomNavName.ME;
              },
              isActive: state.selected == HomeBottomNavName.ME,
              iconWidget: BottomNavTabIcon(
                isActive: state.selected == HomeBottomNavName.ME,
                iconAssetInactive:
                Assets.images.assetsImgAuthenticationIconUser.path,
                iconAssetActive:
                Assets.images.assetsImgAuthenticationIconUserSelected.path,
              ),
              text: 'Me',
            ),
          ),
        ],
      ),
    );
  }
}

class HomeBotNavTabItem extends StatelessWidget {
  final Widget iconWidget;
  final String text;
  final VoidCallback callback;
  final bool isActive;

  const HomeBotNavTabItem(
      {Key? key,
      required this.text,
      required this.callback,
      required this.isActive,
      required this.iconWidget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var txtStyle = AppTextStyle(context);
    return GestureDetector(
      onTap: callback,
      child: ColoredBox(
        color: Colors.transparent,
        child: Column(
          children: [
            const SizedBox(height: 6,),
            iconWidget,
            Padding(
              padding: const EdgeInsets.only(bottom: 8, top: 8),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  text,
                  style: isActive
                      ? txtStyle.homeNavItemActive
                      : txtStyle.homeNavItemInactive,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BottomNavTabIcon extends StatelessWidget {
  final String iconAssetActive;
  final String iconAssetInactive;
  final bool isActive;

  const BottomNavTabIcon(
      {Key? key,
      required this.iconAssetActive,
      required this.iconAssetInactive,
      required this.isActive})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      isActive ? iconAssetActive : iconAssetInactive,
      height: 28,
    );
  }
}