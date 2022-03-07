import '../../utils/common_import.dart';

class ColorsDivider extends StatelessWidget {
  final double width;
  final double height;
  final double spacing;
  final List<Color> colors = [const Color(0xFF64B5F6), const Color(0xFFFF8A80)];

  ColorsDivider(
      {Key? key, this.width = 25, this.spacing = 10, this.height = 4})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, size) {
        List<Widget> children = [];
        double run = 0;
        int i = 0;
        while (run < size.maxWidth) {
          final color = colors[(i++) % colors.length];
          run += width;
          children.add(
            Container(
              width:
                  run <= size.maxWidth ? width : width - (run - size.maxWidth).abs(),
              height: height,
              color: color,
            ),
          );
          run += spacing;
          if (run < size.maxWidth) {
            children.add(SizedBox(
              width: spacing,
            ));
          }
        }
        return Row(
          children: children,
        );
      },
    );
  }
}
