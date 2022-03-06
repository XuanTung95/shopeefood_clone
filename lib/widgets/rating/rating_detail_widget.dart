import 'package:shopeefood_clone/models/model_shop_detail.dart';
import 'package:shopeefood_clone/widgets/button/app_gesture_detector.dart';
import 'package:shopeefood_clone/widgets/rating/rating_selection_widget.dart';

import '../../utils/common_import.dart';

class RatingDetailWidget extends StatefulWidget {
  final Function(int) onSelected;
  final Rating? rating;

  const RatingDetailWidget(
      {Key? key, required this.onSelected, required this.rating})
      : super(key: key);

  @override
  _RatingDetailWidgetState createState() => _RatingDetailWidgetState();
}

class _RatingDetailWidgetState extends State<RatingDetailWidget> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    if (widget.rating == null) return const SizedBox();
    final textStyle = AppTextStyle(context);
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Column(
            children: [
              Text(
                '${widget.rating?.avg ?? 0}',
                style: textStyle.bodyBoldBlack.copyWith(fontSize: 24),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Overall',
                style: textStyle.bodySmallGrey
                    .copyWith(fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Wrap(
                runSpacing: 5,
                spacing: 5,
                children: [
                  AppGestureDetector(
                    onTap: () {
                      setState(() {
                        selected = 0;
                        widget.onSelected.call(selected);
                      });
                    },
                    child: RatingSelectionWidget(
                      isSelected: selected == 0,
                      botText: '(${widget.rating?.displayTotalReview ?? ''})',
                      topText: 'all'.tr(),
                    ),
                  ),
                  AppGestureDetector(
                    onTap: () {
                      setState(() {
                        selected = 1;
                        widget.onSelected.call(selected);
                      });
                    },
                    child: RatingSelectionWidget(
                      isSelected: selected == 1,
                      botText: '(500+)',
                      topText: 'rebranding.review_with_photo'.tr(),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Wrap(
                runSpacing: 5,
                spacing: 5,
                children: [
                  AppGestureDetector(
                    onTap: () {
                      setState(() {
                        selected = 2;
                        widget.onSelected.call(selected);
                      });
                    },
                    child: RatingSelectionWidget(
                      isSelected: selected == 2,
                      botText: '(500+)',
                      star: 5,
                    ),
                  ),
                  AppGestureDetector(
                    onTap: () {
                      setState(() {
                        selected = 3;
                        widget.onSelected.call(selected);
                      });
                    },
                    child: RatingSelectionWidget(
                      isSelected: selected == 3,
                      botText: '(100+)',
                      star: 4,
                    ),
                  ),
                  AppGestureDetector(
                    onTap: () {
                      setState(() {
                        selected = 4;
                        widget.onSelected.call(selected);
                      });
                    },
                    child: RatingSelectionWidget(
                      isSelected: selected == 4,
                      botText: '(100+)',
                      star: 3,
                    ),
                  ),
                  AppGestureDetector(
                    onTap: () {
                      setState(() {
                        selected = 5;
                        widget.onSelected.call(selected);
                      });
                    },
                    child: RatingSelectionWidget(
                      isSelected: selected == 5,
                      botText: '(100+)',
                      star: 2,
                    ),
                  ),
                  AppGestureDetector(
                    onTap: () {
                      setState(() {
                        selected = 6;
                        widget.onSelected.call(selected);
                      });
                    },
                    child: RatingSelectionWidget(
                      isSelected: selected == 6,
                      botText: '(100+)',
                      star: 1,
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}