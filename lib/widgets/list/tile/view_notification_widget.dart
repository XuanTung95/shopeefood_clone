// import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:shopeefood_clone/models/model_notifications.dart';
import 'package:shopeefood_clone/utils/date_time_utils.dart';
import 'package:shopeefood_clone/widgets/common/app_image_widget.dart';

import '../../../utils/common_import.dart';

class ViewNotificationWidget extends StatelessWidget {
  final ModelNotification notification;

  const ViewNotificationWidget({Key? key, required this.notification})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = AppTextStyle(context);
    return Container(
      color: (notification.isUnread ?? true)
          ? const Color(0xFFfff4f4)
          : Colors.transparent,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 10),
              child: AppImageNetworkWidget(
                url: ImageUtils.getIconImage(notification.photos),
              ),
            ),
          ),
          Expanded(
            flex: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 10, right: 8),
                  child: Text(
                    notification.title ?? '',
                    style: textStyle.bodySmall
                        .copyWith(fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 5, bottom: 8, right: 8),
                  child: HtmlWidget(
                    notification.message ?? '',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, bottom: 8),
                  child: Text(
                    DateTimeUtils.getNotificationDate(notification),
                    style: textStyle.bodySmall2Grey,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
