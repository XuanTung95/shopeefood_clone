import '../../../../../utils/common_import.dart';

class SearchFilterRow extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final void Function(int index) onClickIndex;

  const SearchFilterRow(
      {Key? key,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.onClickIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = AppTextStyle(context);
    return Row(
      children: [
        buildText(text1, context, textStyle, () {
          onClickIndex(0);
        }),
        const Spacer(),
        buildText(text2, context, textStyle, () {
          onClickIndex(1);
        }),
        const Spacer(),
        buildText(text3, context, textStyle, () {
          onClickIndex(2);
        }),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }

  buildText(String text, BuildContext context, AppTextStyle textStyle,
      void Function() onTap) {
    if (text.isEmpty) return SizedBox();
    return Flexible(
      flex: text.length + 4,
      child: GestureDetector(
        onTap: onTap,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 5, left: 10),
                  child: Text(
                    text,
                    textAlign: TextAlign.right,
                    style: textStyle.bodyRegular,
                    maxLines: 1,
                  ),
                ),
                Image.asset(
                  Assets.images.assetsImgCommonIcarrowdown21.path,
                  width: 12,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
