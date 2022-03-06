import 'package:shopeefood_clone/models/model_feedback_response.dart';
import 'package:shopeefood_clone/models/model_photo.dart';
import 'package:shopeefood_clone/utils/date_time_utils.dart';
import 'package:shopeefood_clone/widgets/common/app_image_widget.dart';
import 'package:shopeefood_clone/widgets/list/tile/divider_widget.dart';
import 'package:shopeefood_clone/widgets/rating/rating_stars_widget.dart';

import '../../../utils/common_import.dart';

class ViewUserComment extends StatelessWidget {
  final ModelUserFeedbacks comment;

  const ViewUserComment({Key? key, required this.comment}) : super(key: key);
  final double avatarSize = 30;

  @override
  Widget build(BuildContext context) {
    final textStyle = AppTextStyle(context);
    final colors = AppColor(context);
    return DividerWidget(
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              width: 10,
            ),
            AppImageNetworkWidget(
              url: ImageUtils.getIconImage(comment.user?.photos),
              width: avatarSize,
              height: avatarSize,
              shape: BoxShape.circle,
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    comment.user?.name ?? 'Anonymous',
                    style: textStyle.bodySmall,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  RatingStarWidget(
                    rating: comment.merchantRate?.toDouble() ?? 0.0,
                    showEmptyStar: true,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    comment.message ?? '',
                    style: textStyle.bodyMedium,
                  ),
                  if (comment.photos?.isNotEmpty ?? false)
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: AppImageNetworkWidget(
                        url: getCommentImage(comment.photos) ?? '',
                        width: 70,
                        height: 70,
                      ),
                    ),
                  if (comment.likedDishes?.isNotEmpty ?? false)
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${'rebranding.review_likes_tip'.tr()}:',
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: comment.likedDishes?.map((item) {
                                    return Text(
                                      item.name ?? '',
                                      style: textStyle.bodySmall
                                          .copyWith(color: Colors.blue),
                                    );
                                  }).toList() ??
                                  [],
                            ),
                          )
                        ],
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      '${DateTimeUtils.getDefaultDate(comment.createTime)}',
                      style: textStyle.bodySmallGrey,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  String? getCommentImage(List<List<Photos>>? photos) {
    if (photos != null && photos.isNotEmpty) {
      for (var value in photos) {
        if (value.isNotEmpty) {
          return ImageUtils.getIconImage(value);
        }
      }
    }
  }
}