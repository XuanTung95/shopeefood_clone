import '../../utils/common_import.dart';

class AppBarDefault extends StatelessWidget {
  final String title;
  const AppBarDefault({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = AppTextStyle(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              context.pop();
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              color: Colors.transparent,
              child: Image.asset(Assets
                  .images
                  .nodeModulesShopeernUicommonSrcComponentsActionbarIconArrowIcBack
                  .path, width: 25,),
            ),
          ),
          Flexible(child: Text(title, style: textStyle.appBarText, overflow: TextOverflow.ellipsis,))
        ],
      ),
    );
  }
}