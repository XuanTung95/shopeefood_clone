import 'package:shopeefood_clone/models/model_meta_response.dart';
import 'package:shopeefood_clone/vm/global/state_home_now_service_categories.dart';
import 'package:shopeefood_clone/widgets/common/app_image_widget.dart';

import '../../utils/common_import.dart';

class HomeNowServiceCategoriesIconRow extends ConsumerStatefulWidget {
  const HomeNowServiceCategoriesIconRow({Key? key}) : super(key: key);

  @override
  _HomeNowServiceCategoriesIconRowState createState() =>
      _HomeNowServiceCategoriesIconRowState();
}

class _HomeNowServiceCategoriesIconRowState
    extends ConsumerState<HomeNowServiceCategoriesIconRow> {
  @override
  Widget build(BuildContext context) {
    var state = ref.watch(StateHomeNowServiceCategories.provider);
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          var category = state.categories[index];
          return Padding(
            padding: EdgeInsets.only(
                left: 10,
                right: (index == state.categories.length - 1) ? 10 : 0),
            child: GestureDetector(
              onTap: () {
                state.setSelected(index);
              },
              child: _CategoryListItem(
                category: category,
                selected: index == state.selectedIndex,
              ),
            ),
          );
        },
        itemCount: state.categories.length,
      ),
    );
  }
}

class _CategoryListItem extends StatelessWidget {
  final Categories category;
  final bool selected;

  const _CategoryListItem(
      {Key? key, required this.category, required this.selected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textStyle = AppTextStyle(context);
    var colors = AppColor(context);
    return Column(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  selected
                      ? colors.primaryColor.withOpacity(0.2)
                      : Colors.grey.withOpacity(0.2),
                  Colors.grey.withOpacity(0.05),
                ],
                stops: [
                  0,
                  0.8,
                ],
              ),
            ),
            child: AppImageNetworkWidget(
              url: ImageUtils.getIconImage(category.icon),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          height: 2,
        ),
        Text(
          category.name ?? '',
          style: textStyle.bodyBoldBlack
              .copyWith(color: selected ? colors.primaryColor : Colors.grey),
        ),
      ],
    );
  }
}