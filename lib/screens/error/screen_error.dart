import 'package:shopeefood_clone/routing/app_routing.dart';
import 'package:shopeefood_clone/widgets/app_bar/app_bar_default.dart';

import '../../utils/common_import.dart';
import '../../widgets/button/app_gesture_detector.dart';

class ScreenError extends StatelessWidget {
  const ScreenError({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = AppTextStyle(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              width: double.infinity,
            ),
            const Spacer(
              flex: 5,
            ),
            Expanded(
              flex: 3,
              child: AppGestureDetector(
                onTap: () {},
                blurType: BlurType.OPACITY,
                child: Image.asset(
                    Assets.images.assetsImgGeneralerrorIllusbusycolor.path),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'general_something_went_wrong_title'.tr(),
                style:
                    textStyle.bodyBoldBlackBig.copyWith(color: Colors.black87),
              ),
            ),
            FractionallySizedBox(
              widthFactor: 0.8,
              child: Text(
                'general_something_went_wrong_text'.tr(),
                textAlign: TextAlign.center,
                style: textStyle.bodyMedium.copyWith(color: Colors.grey[600]!),
              ),
            ),
            GestureDetector(
              onTap: () {
                AppRouting.goToHomeScreen(context);
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: Colors.grey),
                ),
                margin: const EdgeInsets.only(top: 20),
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                child: Text('general_try_again'.tr()),
              ),
            ),
            const Spacer(
              flex: 5,
            ),
          ],
        ),
      ),
    );
  }
}
