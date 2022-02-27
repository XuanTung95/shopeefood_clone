import 'package:shopeefood_clone/utils/common_import.dart'; 

class NotifyBubble extends StatelessWidget {
  final Widget child;
  const NotifyBubble({ Key? key, required this.child }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: PhysicalModel(
            color: AppColor(context).primaryColor,
            elevation: 2,
            child: Container(color: AppColor(context).primaryColor, width: 12, height: 5,)),
        ),
        PhysicalModel(color: AppColor(context).primaryColor,
          borderRadius: BorderRadius.circular(6),
          elevation: 2,
          child: child,
        ),
      ],
    );
  }
  

  factory NotifyBubble.badWeather(BuildContext context) {
    return NotifyBubble(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 200),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'weather_toast_title'.tr(),
                        style: AppTextStyle(context).bubbleBold,
                      ),
                      const SizedBox(height: 10,),
                      Text(
                        'weather_toast_message'.tr(),
                        style: AppTextStyle(context).bubble,
                      )
                    ],
                  ),
                ),
              ),
            );
  }
}