import 'package:shopeefood_clone/utils/common_import.dart';

class WidgetUtils {
  static Offset? getWidgetGlobalPosition(BuildContext context) {
    final RenderObject? box = context.findRenderObject();
    if (box is RenderBox) {
      return box.localToGlobal(Offset.zero);
    }
  }

  static Size? getWidgetSize(BuildContext context) {
    final RenderObject? box = context.findRenderObject();
    if (box is RenderBox) {
      return box.size;
    }
  }
}