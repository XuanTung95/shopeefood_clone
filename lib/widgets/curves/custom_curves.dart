import 'dart:ui';
import 'package:flutter/animation.dart';

const _imageZoomAnimation = [
  Offset(0.0, 1.0),
  Offset(0.5, 1.15),
  Offset(1, 1.0),
];

var _menuSlideAnimation = const [
  Offset(0, 0.013),
  Offset(0.34, 1),
  Offset(0.557, 1),
  Offset(0.634, 0),
  Offset(0.68, 0.13),
  Offset(0.747, 0.195),
  Offset(0.823, 0.113),
  Offset(0.85, 0),
  Offset(1, 0),
];

var _flyingAnimation = const [
  Offset(0.00432645976150774, 0.9871548207600911),
  Offset(0.0712648173094738, 1.0223776499430337),
  Offset(0.15196579843955862, 1.060552469889323),
  Offset(0.23821563117588931, 1.0860680643717449),
  Offset(0.3286193928071475, 1.0924494171142578),
  Offset(0.4079246470736577, 1.0742310587565105),
  Offset(0.5032170915163867, 1.0407562764485676),
  Offset(0.6005241786067195, 0.9640424092610678),
  Offset(0.7086684235785162, 0.7841483561197916),
  Offset(0.8587159168107708, 0.39963277180989587),
  Offset(1.001322991291996, 0.00653747558593748),
];

class CustomCurves extends Animatable<double> {
  List<Offset> points = [];
  int idx = 0;

  CustomCurves({this.points = const []});

  factory CustomCurves.imageZoomAnimation() {
    return CustomCurves(points: _imageZoomAnimation);
  }

  factory CustomCurves.menuSlideAnimation() {
    return CustomCurves(points: _menuSlideAnimation);
  }

  factory CustomCurves.flyingAnimation() {
    return CustomCurves(points: _flyingAnimation);
  }

  @override
  transform(double t) {
    Offset? start;
    Offset end = points.last;
    int si = 0;
    if (idx < points.length - 1 && t > points[idx].dx) {
      si = idx + 1;
    }
    for (int i = si; i < points.length; i++) {
      if (t <= points[i].dx) {
        end = points[i];
        idx = i;
        if (i > 0) {
          start = points[i - 1];
        }
        break;
      }
    }
    if (start == null) {
      return end.dy;
    } else {
      double tx = end.dx - start.dx;
      if (tx > 0) {
        return start.dy + (t - start.dx) * (end.dy - start.dy) / tx;
      }
    }
    return end.dy;
  }
}
