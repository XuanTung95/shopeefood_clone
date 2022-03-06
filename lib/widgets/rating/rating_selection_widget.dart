import 'package:shopeefood_clone/widgets/rating/rating_stars_widget.dart';

import '../../utils/common_import.dart';

class RatingSelectionWidget extends StatelessWidget {
  final bool isSelected;
  final String botText;
  final String? topText;
  final int? star;

  const RatingSelectionWidget(
      {Key? key,
      required this.isSelected,
      required this.botText,
      this.topText,
      this.star})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = AppTextStyle(context);
    final colors = AppColor(context);
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              color: isSelected ? Colors.white : colors.homeDividerBg,
              borderRadius: BorderRadius.circular(2),
              border: Border.all(
                  color: isSelected ? colors.primaryColor : Colors.transparent,
                  width: 0.5)),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          constraints: const BoxConstraints(
            minWidth: 80,
          ),
          child: Column(
            children: [
              if (topText != null)
                Text(
                  topText!,
                  style: textStyle.bodyMedium.copyWith(
                    fontSize: 12,
                    color: isSelected ? colors.primaryColor : null,
                  ),
                ),
              if (star != null)
                RatingStarWidget(
                  rating: star!.toDouble(),
                  showEmptyStar: false,
                  starSize: 8,
                ),
              const SizedBox(
                height: 5,
              ),
              Text(
                botText,
                style: textStyle.bodySmall2Grey
                    .copyWith(color: isSelected ? colors.primaryColor : null),
              ),
            ],
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