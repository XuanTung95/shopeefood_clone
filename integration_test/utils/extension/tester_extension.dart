import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

extension TesterExtension on WidgetTester {

  Future<Iterable<Widget>?> waitForWidget(Finder finder, {Duration duration = const Duration(seconds: 10)}) async {
    Iterable<Widget>? ret;
    final start = DateTime.now();
    final end = start.add(duration);
    await Future.doWhile(() async {
      await pumpAndSettle();
      try {
        final widgets = widgetList(finder);
        if (widgets.isNotEmpty) {
          return false;
        }
        if (DateTime.now().compareTo(end) > 0) {
          print('Time out: $finder');
          return false;
        }
        await pumpAndSettle();
        return true;
      } catch (e) {
        print('Error during wait: $e');
      }
      return false;
    });
    return ret;
  }
}