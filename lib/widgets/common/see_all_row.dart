import '../../utils/common_import.dart';

class SeeAllRow extends StatelessWidget {
  final String title;
  final Widget? titleWidget;
  final VoidCallback onClick;
  final bool showSeeAll;

  const SeeAllRow(
      {Key? key,
      required this.title,
      required this.onClick,
      required this.showSeeAll,
      this.titleWidget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textStyle = AppTextStyle(context);
    return Row(
      children: [
        Expanded(
          child: titleWidget ??
              Text(
                title,
                style: textStyle.seeAllRowTitle,
                maxLines: 1,
              ),
        ),
        if (showSeeAll)
          GestureDetector(
            onTap: onClick,
            child: ColoredBox(
              color: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Row(
                  children: [
                    Text(
                      'shopeefood.see_all'.tr(),
                      style: textStyle.bodySmallGrey,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Image.asset(
                        Assets.images.assetsImgCommonArrowRight.path,
                        width: 11,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
      ],
    );
  }
}
