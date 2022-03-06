import '../../utils/common_import.dart';

class BannerScrollBar extends StatefulWidget {
  final int initValue;
  final int count;
  final int value;
  final double itemWidth;
  final double itemHeight;
  final double itemPadding;
  final double circleSize;

  const BannerScrollBar(
      {Key? key,
      required this.initValue,
      required this.count,
      required this.value,
      required this.itemWidth,
      required this.itemPadding,
      required this.itemHeight,
      required this.circleSize})
      : super(key: key);

  @override
  _BannerScrollBarState createState() => _BannerScrollBarState();
}

class _BannerScrollBarState extends State<BannerScrollBar> {
  late int initValue;
  int value = 0;

  @override
  void initState() {
    super.initState();
    initValue = widget.initValue;
    value = widget.value;
  }

  @override
  void didUpdateWidget(covariant BannerScrollBar oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (value != widget.value) {
      setState(() {
        value = widget.value;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        buildDash(),
        AnimatedPositioned(
            left: getCircleLeft(),
            child: Container(
              width: widget.circleSize,
              height: widget.circleSize,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 1)),
            ),
            duration: const Duration(milliseconds: 300))
      ],
    );
  }

  buildDash() {
    List<Widget> children = [];
    for (int i = 0; i < widget.count; i++) {
      children.add(
        Container(
          width: widget.itemWidth,
          height: widget.itemHeight,
          color: i == value ? Colors.transparent : Colors.white,
          margin: EdgeInsets.symmetric(
            horizontal: widget.itemPadding,
          ),
        ),
      );
    }
    return SizedBox(
      height: widget.circleSize,
      child: Row(
        children: children,
      ),
    );
  }

  double getCircleLeft() {
    var itemWidth = (widget.itemWidth + 2 * widget.itemPadding);
    return (value) * itemWidth + (itemWidth - widget.circleSize) / 2;
  }
}
