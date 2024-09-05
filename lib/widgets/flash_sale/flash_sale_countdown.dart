import 'package:slide_countdown/slide_countdown.dart';
import '../../utils/common_import.dart';

class FlashSaleCountdown extends StatefulWidget {
  const FlashSaleCountdown({Key? key}) : super(key: key);

  @override
  _FlashSaleCountdownState createState() => _FlashSaleCountdownState();
}

class _FlashSaleCountdownState extends State<FlashSaleCountdown> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SlideCountdownSeparated(
          // height: 20,
          // width: 24,
          duration: const Duration(days: 0, hours: 3, minutes: 30),
          padding: EdgeInsets.zero,
          separatorPadding: const EdgeInsets.all(2),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(1)),
            color: Colors.black,
          ),
          slideDirection: SlideDirection.up,
          style: AppTextStyle(context).homeDeliverToContent.copyWith(
              color: Colors.white, fontSize: 13, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
