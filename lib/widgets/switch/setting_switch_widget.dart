import '../../utils/common_import.dart';

class SettingSwitchWidget extends StatefulWidget {
  final String title;
  final String description;
  final bool initValue;
  final void Function(bool) onChange;

  const SettingSwitchWidget(
      {Key? key,
      required this.title,
      required this.description,
      required this.initValue,
      required this.onChange})
      : super(key: key);

  @override
  _SettingSwitchWidgetState createState() => _SettingSwitchWidgetState();
}

class _SettingSwitchWidgetState extends State<SettingSwitchWidget> {
  late bool selected;

  @override
  void initState() {
    super.initState();
    selected = widget.initValue;
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = AppTextStyle(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.title, style: textStyle.bodyBoldBlack,),
                const SizedBox(height: 10,),
                Text(widget.description, style: textStyle.bodySmallGrey,)
              ],
            ),
          ),
        ),
        Switch(
            value: selected,
            thumbColor: MaterialStateProperty.resolveWith((states) {
              if (!selected) {
                return Colors.grey[300];
              }
              return Colors.green;
            }),
            trackColor: MaterialStateProperty.resolveWith((states) {
              if (!selected) {
                return Colors.grey;
              }
              return Colors.green[300];
            }),
            onChanged: (value) {
              setState(() {
                selected = !selected;
              });
            }),
      ],
    );
  }
}