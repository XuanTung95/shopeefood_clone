import '../../../../../routing/app_routing.dart';
import '../../../../../utils/common_import.dart';
import '../../../../../widgets/empty/no_order_to_rate.dart';
import '../../../../../widgets/common/link_shopee_account_row.dart';

class OrderToRateView extends StatelessWidget {
  const OrderToRateView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      buildLinkShopeeRow(context),
      const Expanded(child: NoOrderToRate()),
    ],);
  }

  buildLinkShopeeRow(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AppRouting.goToLinkShopeeAcount(context);
      },
      child: const LinkShopeeAccountRow(),
    );
  }
}