import 'package:shopeefood_clone/vm/global/state_me.dart';
import 'package:shopeefood_clone/widgets/button/app_select_button.dart';
import 'package:shopeefood_clone/widgets/divider/list_divider.dart';

import '../../../../../utils/common_import.dart';
import '../../../../../widgets/list/tile/divider_widget.dart';
import '../../../../../widgets/me/bind_shopee_acount_widget.dart';
import '../../../../../widgets/me/me_tab_list_item.dart';
import '../../../../../widgets/me/user_avatar_widget.dart';

class TabMeHomeView extends ConsumerStatefulWidget {
  const TabMeHomeView({Key? key}) : super(key: key);

  @override
  _MeTabViewState createState() => _MeTabViewState();
}

class _MeTabViewState extends ConsumerState<TabMeHomeView> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(StateMe.provider);
    final textStyle = AppTextStyle(context);
    final colors = AppColor(context);
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Container(
            color: colors.profileBg,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, bottom: 10, top: 70),
              child: Row(
                children: [
                  UserAvatarWidget(),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    state.userProfile?.name ?? '',
                    style: textStyle.userName,
                  ),
                ],
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: BindShopeeAcountWidget(),
        ),
        SliverToBoxAdapter(
          child: ListDivider(),
        ),
        SliverToBoxAdapter(
          child: DividerWidget(
            child: MeTabListItem(
              asset: Assets.images.assetsImgMeVoucherIcon.path,
              title: 'user_voucher_header'.tr(),
              tailWidget: Text(
                '12',
                style: textStyle.bodySmallGrey,
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: DividerWidget(
            child: MeTabListItem(
              asset: Assets.images.assetsImgMeCoinsIcon.path,
              title: 'coins_my_shopee_coin'.tr(),
              tailWidget: Text(
                'coins_enable_now'.tr(),
                style: textStyle.bodySmallGrey.copyWith(color: Colors.blue),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: DividerWidget(
            child: MeTabListItem(
              asset: Assets.images.assetsImgMePayment.path,
              title: 'payment_title'.tr(),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: DividerWidget(
            child: MeTabListItem(
              asset: Assets.images.assetsImgMeAddressIcon.path,
              title: 'general_address'.tr(),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: ListDivider(),
        ),
        SliverToBoxAdapter(
          child: DividerWidget(
            child: MeTabListItem(
              asset: Assets.images.assetsImgMeInviteIcon.path,
              title: 'me_invite_friend'.tr(),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: DividerWidget(
            child: MeTabListItem(
              asset: Assets.images.assetsImgMeHelpIcon.path,
              title: 'help_center'.tr(),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: ListDivider(),
        ),
        SliverToBoxAdapter(
          child: DividerWidget(
            child: MeTabListItem(
              asset: Assets.images.assetsImgMeShowOwnersIcon.path,
              title: 'me_for_shop_owner'.tr(),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: ListDivider(),
        ),
        SliverToBoxAdapter(
          child: DividerWidget(
            child: MeTabListItem(
              asset: Assets.images.assetsImgMeUserPolicyIcon.path,
              title: 'user_policy'.tr(),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: DividerWidget(
            child: MeTabListItem(
              asset: Assets.images.assetsImgMeSettingsIcon.path,
              title: 'account_settings'.tr(),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: DividerWidget(
            child: MeTabListItem(
              asset: Assets.images.assetsImgMeShopeefoodIcon.path,
              title: 'about_now_vn'.tr(),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            color: colors.homeDividerBg,
            padding: EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 40),
            child: SizedBox(
              height: 40,
              child: AppSelectButton(
                onClick: () {}, text: 'logout'.tr(),
              ),
            ),
          ),
        )
      ],
    );
  }
}
