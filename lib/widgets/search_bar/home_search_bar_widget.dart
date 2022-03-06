import '../../utils/common_import.dart';

class HomeSearchBarWidget extends StatelessWidget {
  final String text;

  const HomeSearchBarWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textStyle = AppTextStyle(context);
    var colors = AppColor(context);
    return Container(
      color: colors.homeSearchBarBg,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          Image.asset(
            Assets.images
                .nodeModulesShopeernCommonimagesAssetsCommoniconSearchicon.path,
            width: 16,
          ),
          const SizedBox(
            width: 5,
          ),
          Flexible(
            child: AutoSizeText(
              text,
              minFontSize: 12,
              style: textStyle.homeSearchBarText,
              maxLines: 1,
            ),
          ),
        ],
      ),
    );
  }
}
