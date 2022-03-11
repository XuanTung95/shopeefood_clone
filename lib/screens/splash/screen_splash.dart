import 'package:shopeefood_clone/routing/app_routing.dart';
import 'package:shopeefood_clone/utils/common_import.dart';
import 'package:shopeefood_clone/vm/global/state_flash_sale.dart';
import 'package:shopeefood_clone/vm/global/state_home_category.dart';
import 'package:shopeefood_clone/vm/global/state_home_dish.dart';
import 'package:shopeefood_clone/vm/global/state_me.dart';
import 'package:shopeefood_clone/vm/global/state_my_voucher.dart';
import 'package:shopeefood_clone/vm/global/state_user_address.dart';
import 'package:shopeefood_clone/vm/global/state_user_location.dart';

import '../../vm/global/state_home_ads_banner.dart';
import '../../vm/global/state_home_collections.dart';
import '../../vm/global/state_meta_data.dart';
import '../../vm/global/state_most_ordered.dart';
import '../../vm/global/state_notifications.dart';
import '../../vm/global/state_order_history.dart';

class ScreenSplash extends ConsumerStatefulWidget {
  const ScreenSplash({Key? key}) : super(key: key);

  @override
  ConsumerState<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends ConsumerState<ScreenSplash> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      initApp();
    });
  }

  Future initApp() async {
    ref.read(StateHomeCategory.provider).init();
    ref.read(StateHomeCollection.provider).init();
    ref.read(StateHomeDish.provider).init();
    ref.read(StateHomeBanner.provider).init();
    ref.read(StateMetaData.provider).init();
    ref.read(StateFlashSale.provider).init();
    ref.read(StateOrderHistory.provider).init();
    ref.read(StateMostOrdered.provider).init();
    ref.read(StateNotifications.provider).init();
    ref.read(StateMe.provider).init();
    ref.read(StateMyVoucher.provider).init();
    ref.read(StateUserAddress.provider).init();
    await Future.delayed(const Duration(seconds: 1));
    ref.read(StateUserLocation.provider).init();
    AppRouting.goToHomeScreen(context);
  }

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: Center(
        child: Image.asset(
          Assets.images.assetsImgNowLogoIclogosf.path,
          width: 80,
        ),
      ),
    );
  }
}
