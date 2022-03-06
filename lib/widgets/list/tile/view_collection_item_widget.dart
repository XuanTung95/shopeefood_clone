import 'package:shopeefood_clone/widgets/common/app_image_widget.dart';

import '../../../models/model_collection.dart';
import '../../../utils/common_import.dart';


class ViewCollectionItemWidget extends StatelessWidget {
  final ModelCollection collection;

  const ViewCollectionItemWidget({Key? key, required this.collection})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var colors = AppColor(context);
    var textStyle = AppTextStyle(context);
    return SizedBox(
      width: 130,
      height: double.infinity,
      child: Container(
        decoration: BoxDecoration(
          color: colors.homeCollectionItemBg,
          border: Border.all(
              color: colors.homeItemBorder,
              width: 0.5
          ),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 12,
              child: AppImageNetworkWidget(
                url: ImageUtils.getIconImage(collection.photos),
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            Expanded(
              flex: 5,
              child: Padding(
                padding:
                const EdgeInsets.only(top: 8, bottom: 5, left: 8, right: 8),
                child: AutoSizeText(
                  collection.name ?? '',
                  style: textStyle.bodyBoldBlack,
                  maxLines: 2,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}