import 'package:shopeefood_clone/routing/app_routing.dart';
import 'package:shopeefood_clone/utils/common_import.dart';
import 'package:shopeefood_clone/vm/global/state_flash_sale.dart';
import 'package:shopeefood_clone/vm/global/state_home_category.dart';
import 'package:shopeefood_clone/vm/global/state_home_dish.dart';
import 'package:shopeefood_clone/vm/global/state_user_location.dart';

import '../../vm/global/state_home_ads_banner.dart';
import '../../vm/global/state_home_collections.dart';
import '../../vm/global/state_meta_data.dart';

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
    ref.read(StateUserLocation.provider).init();
    ref.read(StateHomeCategory.provider).init();
    ref.read(StateHomeCollection.provider).init();
    ref.read(StateHomeDish.provider).init();
    ref.read(StateHomeBanner.provider).init();
    ref.read(StateMetaData.provider).init();
    ref.read(StateFlashSale.provider).init();
    await Future.delayed(const Duration(seconds: 0));
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