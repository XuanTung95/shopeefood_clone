import 'package:flutter_test/flutter_test.dart';
import 'package:shopeefood_clone/utils/app_labels.dart';

import 'package:shopeefood_clone/main.dart' as app;
import './extension/tester_extension.dart';

class AppBehavior {

  Future openAppAndGoToHomeScreen(WidgetTester tester) async {
    await app.main();
    await tester.pumpAndSettle();
    await closeHomePopup(tester);
  }

  Future closeHomePopup(WidgetTester tester) async {
    final closeBtnFinder = find.bySemanticsLabel(AppLabels.CLOSE_POPUP_BUTTON);
    await tester.waitForWidget(closeBtnFinder);
    await tester.tap(closeBtnFinder);
    await tester.pumpAndSettle();
  }
}
