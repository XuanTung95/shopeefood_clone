

import 'package:flutter/cupertino.dart';

import '../../utils/common_import.dart';

class BottomSheetCupertinoChooseType extends StatelessWidget {
  final String title;
  final List<CupertinoActionSheetAction> actions;
  const BottomSheetCupertinoChooseType({Key? key, required this.title, required this.actions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = AppTextStyle(context);
    return CupertinoActionSheet(
      title: title.isNotEmpty ? Text(
        title,
        style: textStyle.bodyMediumGrey,
      ) : null,
      actions: actions,
      cancelButton: CupertinoActionSheetAction(
        child: Text("cancel".tr()),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
