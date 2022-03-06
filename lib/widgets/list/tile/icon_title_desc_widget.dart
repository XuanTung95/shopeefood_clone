import '../../../utils/common_import.dart';

class IconTitleDescWidget extends StatelessWidget {
  final String asset;
  final String title;
  final String desc;

  const IconTitleDescWidget(
      {Key? key, required this.asset, required this.title, required this.desc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = AppTextStyle(context);
    return Row(
      children: [
        Expanded(
          flex: 6,
          child: Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.center,
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxHeight: 45,
                maxWidth: 45,
              ),
              child: Image.asset(
                asset,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 20,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      title,
                      style: textStyle.bodyRegular,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 8),
                      child: Text(
                        desc,
                        style: textStyle.bodySmallGrey,
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset(
                Assets.images.assetsImgShipCommonArrowRight.path,
                width: 25,
              ),
            ],
          ),
        ),
      ],
    );
  }
}