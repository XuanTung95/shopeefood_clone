import '../../../utils/common_import.dart';
import '../../common/right_arrow_thin.dart';

class EditUserListItem extends StatelessWidget {
  final String leftText;
  final String rightText;
  final Widget? leftWidget;
  final Widget? rightWidget;
  final bool showArrow;
  final bool keepPaddingRight;
  final TextStyle? leftStyle;
  final TextStyle? rightStyle;

  const EditUserListItem({
    Key? key,
    required this.leftText,
    required this.rightText,
    this.showArrow = true,
    this.leftStyle,
    this.rightStyle,
    this.leftWidget,
    this.keepPaddingRight = true,
    this.rightWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = AppTextStyle(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          if (leftText.isNotEmpty)
            Text(
              leftText,
              style: leftStyle ?? textStyle.bodyRegular,
            ),
          if (leftWidget != null) leftWidget!,
          if (rightText.isNotEmpty) ...[
            const Spacer(
              flex: 1,
            ),
            Expanded(
              flex: 3,
              child: Text(
                rightText,
                style: rightStyle ?? textStyle.bodyRegular,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.right,
              ),
            )
          ],
          if (rightText.isEmpty) const Spacer(),
          if (rightWidget != null) rightWidget!,
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: showArrow
                ? const RightArrowThin()
                : keepPaddingRight
                    ? const SizedBox(
                        width: 10,
                      )
                    : const SizedBox(),
          ),
        ],
      ),
    );
  }
}
