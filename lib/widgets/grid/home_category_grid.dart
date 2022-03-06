import 'package:shopeefood_clone/models/model_category.dart';
import 'package:shopeefood_clone/routing/app_routing.dart';
import 'package:shopeefood_clone/widgets/button/app_gesture_detector.dart';
export 'package:extended_image/extended_image.dart';
import '../../utils/common_import.dart';
import '../common/app_image_widget.dart';
import '../scroll_behavior/clone_scroll_bar.dart';

class HomeCategoryGrid extends StatefulWidget {
  final List<ModelHomeSquare> categories;

  const HomeCategoryGrid({Key? key, required this.categories}) : super(key: key);

  @override
  State<HomeCategoryGrid> createState() => _HomeCategoryGridState();
}

class _HomeCategoryGridState extends State<HomeCategoryGrid> {
  late ScrollController scrollController;
  final homeScrollBarKey = GlobalKey<RawScrollbarState>();

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, size) {
      double margin = (size.maxWidth - 60) / 2;
      return CustomRawScrollbar(
        controller: scrollController,
        isAlwaysShown: true,
        trackColor: const Color(0xFFfacac0),
        radius: const Radius.circular(10),
        thickness: 3,
        minThumbLength: 20,
        thumbColor: AppColor(context).homeGridScrollbarThumb,
        minOverscrollLength: 5,
        mainAxisMargin: margin,
        // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: GridView.builder(
            controller: scrollController,
            scrollDirection: Axis.horizontal,
            gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (BuildContext context, int index) {
              final category = widget.categories[index];
              return AppGestureDetector(
                onTap: () {
                  AppRouting.goToShopDetailScreen(context);
                },
                child: HomeCategoryItem(
                  category: category,
                ),
              );
            },
            itemCount: widget.categories.length,
          ),
        ),
      );
    });
  }
}

class HomeCategoryItem extends StatelessWidget {
  final ModelHomeSquare category;

  const HomeCategoryItem({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textStyle = AppTextStyle(context);
    return Column(
      children: [
        Expanded(
          flex: 7,
          child: Padding(
            padding: const EdgeInsets.all(2),
            child: AspectRatio(
              aspectRatio: 1,
              child: AppImageNetworkWidget(
                url: ImageUtils.getIconImage(category.photos),
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
                //cancelToken: cancellationToken,
              ),
            ),
          ),
        ),
        Expanded(
            flex: 4,
            child: Text(
              category.title ?? '',
              maxLines: 2,
              style: textStyle.homeCategoryText,
              textAlign: TextAlign.center,
            ))
      ],
    );
  }
}