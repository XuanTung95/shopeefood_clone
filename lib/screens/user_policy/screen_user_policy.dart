import 'package:shopeefood_clone/widgets/app_bar/app_bar_default.dart';
import 'package:shopeefood_clone/widgets/button/app_gesture_detector.dart';
import 'package:shopeefood_clone/widgets/list/tile/divider_widget.dart';

import '../../utils/common_import.dart';
import '../../widgets/divider/list_divider.dart';
import '../../widgets/list/tile/simple_list_item.dart';

class ScreenUserPolicy extends StatelessWidget {
  const ScreenUserPolicy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = AppColor(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            DividerWidget(
              child: AppBarDefault(
                title: 'user_policy'.tr(),
              ),
            ),
            const ListDivider(),
            DividerWidget(
                child: AppGestureDetector(
                  onTap: () {  },
                  child: SimpleListItem(
                    title: 'privacy_policy'.tr(),
                  ),
                )),
            DividerWidget(
                child: AppGestureDetector(
                  onTap: () {  },
                  child: SimpleListItem(
                    title: 'regulation'.tr(),
                  ),
                )),
            DividerWidget(
                child: AppGestureDetector(
                  onTap: () {  },
                  child: SimpleListItem(
                    title: 'terms_of_service'.tr(),
                  ),
                )),
            DividerWidget(
              child: AppGestureDetector(
                onTap: () {  },
                child: SimpleListItem(
                  title: 'dispute_resolution_policy'.tr(),
                ),
              ),
            ),
            Expanded(
                child: Container(
                  color: colors.homeDividerBg,
                ))
          ],
        ),
      ),
    );
  }
}