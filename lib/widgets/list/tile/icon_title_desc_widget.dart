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
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset(
              asset,
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 8,),
              Text(title, style: textStyle.bodyRegular,),
              Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 8),
                child: Text(desc, style: textStyle.bodySmallGrey,),
              ),
            ],
          ),
        ),
        Image.asset(
          Assets.images.assetsImgShipCommonArrowRight.path,
          width: 25,
        ),
      ],
    );
  }
}
