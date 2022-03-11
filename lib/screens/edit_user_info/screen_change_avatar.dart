import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shopeefood_clone/utils/permission_utils.dart';
import 'package:shopeefood_clone/vm/global/state_me.dart';
import 'package:shopeefood_clone/widgets/app_bar/app_bar_default.dart';

import '../../utils/common_import.dart';
import '../../widgets/bottom_sheet/bottom_sheet_cupertino_choose_type.dart';
import '../../widgets/button/app_gesture_detector.dart';
import '../../widgets/list/tile/divider_widget.dart';
import '../../widgets/list/tile/edit_user_list_item.dart';
import '../../widgets/me/user_avatar_widget.dart';

class ScreenChangeAvatar extends ConsumerStatefulWidget {
  const ScreenChangeAvatar({Key? key}) : super(key: key);

  @override
  ConsumerState<ScreenChangeAvatar> createState() => _ScreenChangeAvatarState();
}

class _ScreenChangeAvatarState extends ConsumerState<ScreenChangeAvatar> {
  final ImagePicker _picker = ImagePicker();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = AppColor(context);
    final textStyle = AppTextStyle(context);
    final state = ref.watch(StateMe.provider);
    return Scaffold(
      backgroundColor: colors.homeBg,
      body: SafeArea(
        child: Column(
          children: [
            AppBarDefault(
              title: 'account_change_avatar'.tr(),
            ),
            Expanded(
              child: Container(
                color: colors.homeDividerBg,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10.0, top: 10, bottom: 5),
                      child: Text(
                        "account_avatar".tr(),
                        style: textStyle.bodySmallGrey,
                      ),
                    ),
                    AppGestureDetector(
                      onTap: () async {
                        final ret = await showCupertinoModalPopup(
                          context: context,
                          builder: (context) {
                            return buildBottomSheetChooseAvatar(
                                textStyle, context);
                          },
                        );
                        switch (ret) {
                          case 1:
                            final status =
                                await PermissionUtils.requestCameraPermission();
                            // Capture a photo
                            if (status == PermissionStatus.granted) {
                              final XFile? photo = await _picker.pickImage(
                                  source: ImageSource.camera,
                                  preferredCameraDevice: CameraDevice.rear);
                              state.pickedAvatar = photo;
                            }
                            break;
                          case 2:
                            final status = await PermissionUtils
                                .requestStoragePermission();
                            if (status == PermissionStatus.granted) {
                              final XFile? image = await _picker.pickImage(
                                  source: ImageSource.gallery);
                              state.pickedAvatar = image;
                            }
                            break;
                        }
                      },
                      child: DividerWidget(
                        child: Container(
                          color: colors.homeBg,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: EditUserListItem(
                              rightText: 'account_change_avatar'.tr(),
                              leftText: '',
                              leftWidget: const UserAvatarWidget(
                                size: 45,
                                verified: false,
                              ),
                              rightStyle: textStyle.bodyRegular.copyWith(
                                color: colors.primaryColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBottomSheetChooseAvatar(
      AppTextStyle textStyle, BuildContext context) {
    return BottomSheetCupertinoChooseType(
      title: "avatar_image_pick_popup_title".tr(),
      actions: [
        CupertinoActionSheetAction(
          child: Text(
            "chat_action_take_picture".tr(),
            style: textStyle.cupertinoAction,
          ),
          onPressed: () async {
            Navigator.of(context).pop(1);
          },
        ),
        CupertinoActionSheetAction(
          child: Text(
            "common_choose_photo".tr(),
            style: textStyle.cupertinoAction,
          ),
          onPressed: () async {
            Navigator.of(context).pop(2);
          },
        )
      ],
    );
  }
}
