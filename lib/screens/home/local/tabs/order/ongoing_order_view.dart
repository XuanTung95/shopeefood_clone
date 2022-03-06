import '../../../../../utils/common_import.dart';
import '../../../../../widgets/empty/order_empty_widget.dart';

class OngoingOrderView extends StatefulWidget {
  const OngoingOrderView({Key? key}) : super(key: key);

  @override
  _OngoingOrderViewState createState() => _OngoingOrderViewState();
}

class _OngoingOrderViewState extends State<OngoingOrderView> {
  @override
  Widget build(BuildContext context) {
    return const OrderEmptyWidget();
  }

}