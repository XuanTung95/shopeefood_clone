
import '../../utils/common_import.dart';
import 'dialog_confirm_button.dart';

class InputNumberDialog extends StatefulWidget {
  final String title;
  final String initText;
  final void Function(String) callback;

  const InputNumberDialog(
      {Key? key,
      required this.title,
      this.initText = "",
      required this.callback})
      : super(key: key);

  @override
  State<InputNumberDialog> createState() => _InputNumberDialogState();
}

class _InputNumberDialogState extends State<InputNumberDialog> {
  final textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    textController.text = widget.initText;
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = AppTextStyle(context);
    final colors = AppColor(context);
    return Dialog(
      shape: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Text(
              widget.title,
              style: textStyle.bodyBoldBlackBig,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(
                border: Border.all(color: colors.homeItemBorder, width: 0.5)),
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: TextField(
              controller: textController,
              decoration: const InputDecoration.collapsed(hintText: ''),
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
            ),
          ),
          DialogConfirmButton(
            clickCancel: () => widget.callback(textController.text),
            clickDone: () => widget.callback(textController.text),
          ),
        ],
      ),
    );
  }
}