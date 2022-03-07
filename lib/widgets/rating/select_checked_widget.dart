import 'package:shopeefood_clone/widgets/rating/rating_stars_widget.dart';

import '../../utils/common_import.dart';

class SelectCheckedWidget extends StatelessWidget {
  final bool isSelected;
  final String text;

  final double? width;
  final double? minWidth;

  final EdgeInsets padding;

  const SelectCheckedWidget({
    Key? key,
    required this.isSelected,
    required this.text,
    this.width = double.infinity,
    this.padding = const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
    this.minWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = AppTextStyle(context);
    final colors = AppColor(context);
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            border: Border.all(
              color: isSelected ? colors.primaryColor : colors.homeItemBorder,
              width: 1,
            ),
          ),
          constraints: BoxConstraints(
            minWidth: width ?? (minWidth ?? 0),
            maxWidth: width ?? double.infinity,
          ),
          padding: padding,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: textStyle.bodyRegular.copyWith(
              fontSize: 13,
              fontWeight: FontWeight.w400,
              color: isSelected ? colors.primaryColor : null,
            ),
          ),
        ),
        if (isSelected)
          Positioned(
            child: Image.asset(
                Assets.images.assetsImgCommonCornercheckedicon.path),
            width: 18,
          )
      ],
    );
  }
}
