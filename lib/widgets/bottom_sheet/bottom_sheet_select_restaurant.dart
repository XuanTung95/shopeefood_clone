import 'dart:io';

import '../../models/model_delivery.dart';
import '../../utils/common_import.dart';
import '../../vm/global/state_brand_restaurant.dart';
import '../list/tile/view_delivery_list_item.dart';
import '../scroll_behavior/macos_scroll_behavior.dart';

class BottomSheetSelectRestaurant extends ConsumerStatefulWidget {
  final ModelDelivery shop;

  const BottomSheetSelectRestaurant({Key? key, required this.shop})
      : super(key: key);

  @override
  _BottomSheetSelectRestaurantState createState() =>
      _BottomSheetSelectRestaurantState();
}

class _BottomSheetSelectRestaurantState
    extends ConsumerState<BottomSheetSelectRestaurant> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero).then(
      (value) {
        final state = ref.read(StateBrandRestaurant.provider(widget.shop));
        state.loadData();
      },
    );
  }


  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(StateBrandRestaurant.provider(widget.shop));
    final textStyle = AppTextStyle(context);
    return ScrollConfiguration(
      behavior:
          Platform.isMacOS ? MacOsScrollBehavior() : const ScrollBehavior(),
      child: Column(
        children: [
          Expanded(flex: 2, child: Container()),
          Expanded(
            flex: 8,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 8),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Text(
                            widget.shop.brand?.name ?? '',
                            style: textStyle.bodyBoldBlackBig,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 4, vertical: 6),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Image.asset(
                              Assets.images.assetsImgCommonIcclosedark.path,
                              width: 25,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const Divider(
                    height: 0,
                  ),
                  Expanded(
                    child: state.pageData.isLoading
                        ? ListView.builder(
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  DeliveryListItemLoading(),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Divider(
                                    height: 0,
                                  ),
                                ],
                              );
                            },
                            itemCount:
                                (widget.shop.brand?.restaurantCount ?? 1) - 1,
                          )
                        : ListView.builder(
                            itemBuilder: (context, index) {
                              var item = state.pageData.data[index];
                              return Column(
                                children: [
                                  ViewDeliveryTypeVerticalList(
                                    data: item,
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Divider(
                                    height: 0,
                                  ),
                                ],
                              );
                            },
                            itemCount: state.pageData.data.length,
                          ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
