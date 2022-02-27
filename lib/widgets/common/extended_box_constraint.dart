
import 'package:flutter/widgets.dart';

class ExtendedBoxConstraint extends StatelessWidget {
  final double? maxWidth;
  final double? maxHeight;
  final double? widthFactor;
  final double? heightFactor;
  const ExtendedBoxConstraint({Key? key, this.maxWidth, this.maxHeight, this.widthFactor, this.heightFactor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, size) {
      var cal = BoxConstraintCalculator(maxWidth: maxWidth, maxHeight: maxHeight, widthFactor: widthFactor, heightFactor: heightFactor);
      return SizedBox(
        width: cal.getWidth(size),
        height: cal.getHeight(size),
      );
    });
  }
}

class BoxConstraintCalculator {
  final double? maxWidth;
  final double? maxHeight;
  final double? widthFactor;
  final double? heightFactor;

  const BoxConstraintCalculator({Key? key, this.maxWidth, this.maxHeight, this.widthFactor, this.heightFactor});

  double? getWidth(BoxConstraints size) {
    double? value;
    if (widthFactor != null && size.maxWidth != double.infinity) {
      value = size.maxWidth * widthFactor!;
      if (maxWidth != null && value > maxWidth!) {
        value = maxWidth;
      }
    } else {
      value = maxWidth;
    }
    return value;
  }

  double? getHeight(BoxConstraints size) {
    double? value;
    if (heightFactor != null && size.maxHeight != double.infinity) {
      value = size.maxHeight * heightFactor!;
      if (maxHeight != null && value > maxHeight!) {
        value = maxHeight;
      }
    } else {
      value = maxHeight;
    }
    return value;
  }
}