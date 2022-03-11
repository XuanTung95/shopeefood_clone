import 'package:flutter/cupertino.dart';
import 'package:shopeefood_clone/routing/app_routing.dart';
import 'package:shopeefood_clone/utils/date_time_utils.dart';
import 'package:shopeefood_clone/utils/enum_utils.dart';
import 'package:shopeefood_clone/utils/phone_utils.dart';
import 'package:shopeefood_clone/vm/global/state_meta_data.dart';
import 'package:shopeefood_clone/widgets/app_bar/app_bar_default.dart';
import 'package:shopeefood_clone/widgets/button/app_gesture_detector.dart';
import 'package:shopeefood_clone/widgets/divider/list_divider.dart';
import 'package:shopeefood_clone/widgets/list/tile/divider_widget.dart';

import '../../utils/common_import.dart';
import '../../vm/global/state_me.dart';
import '../../widgets/bottom_sheet/bottom_sheet_cupertino_choose_type.dart';
import '../../widgets/list/tile/edit_user_list_item.dart';
import '../../widgets/me/user_avatar_widget.dart';

class ScreenEditUserInfo extends ConsumerStatefulWidget {
  const ScreenEditUserInfo({Key? key}) : super(key: key);

  @override
  ScreenEditUserInfoState createState() => ScreenEditUserInfoState();
}

class ScreenEditUserInfoState extends ConsumerState<ScreenEditUserInfo> {
  @override
  Widget build(BuildContext context) {
    final colors = AppColor(context);
    final textStyles = AppTextStyle(context);
    final state = ref.watch(StateMe.provider);
    return Scaffold(
      backgroundColor: colors.homeBg,
      body: SafeArea(
        child: Column(
          children: [
            AppBarDefault(
              title: 'user_information'.tr(),
            ),
            const ListDivider(),
            Expanded(
              child: Container(
                color: colors.homeDividerBg,
                child: SingleChildScrollView(
                  child: Container(
                    color: colors.homeBg,
                    child: Column(
                      children: [
                        Column(
                          children: [
                            buildAvatarRow(context, textStyles, colors),
                            buildUsernameRow(state),
                            buildPhoneRow(context, state),
                          ],
                        ),
                        const ListDivider(),
                        Column(
                          children: [
                            buildNameRow(context, state),
                            buildEmailRow(context, state),
                            buildGenderRow(state, textStyles),
                            buildDoBRow(state, textStyles),
                            // buildOccupationRow(state, textStyles),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  AppGestureDetector buildAvatarRow(
      BuildContext context, AppTextStyle textStyles, AppColor colors) {
    return AppGestureDetector(
      onTap: () {
        AppRouting.goToEditAvatarScreen(context);
      },
      child: DividerWidget(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: EditUserListItem(
            rightText: 'account_change_avatar'.tr(),
            leftText: '',
            rightStyle: textStyles.bodyRegular.copyWith(
              color: colors.primaryColor,
            ),
            leftWidget: const UserAvatarWidget(
              size: 45,
              verified: false,
            ),
          ),
        ),
      ),
    );
  }

  DividerWidget buildUsernameRow(StateMe state) {
    return DividerWidget(
      child: AppGestureDetector(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: EditUserListItem(
            rightText: state.userProfile?.username ?? '',
            leftText: 'username'.tr(),
            showArrow: false,
          ),
        ),
      ),
    );
  }

  DividerWidget buildPhoneRow(BuildContext context, StateMe state) {
    return DividerWidget(
      child: AppGestureDetector(
        onTap: () {
          AppRouting.goToPhoneDetailScreen(context);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: EditUserListItem(
            rightText: PhoneUtils.getDisplayPhone(state.userProfile?.phones,
                hide: true),
            leftText: 'phone_number'.tr(),
            showArrow: true,
          ),
        ),
      ),
    );
  }

  DividerWidget buildNameRow(BuildContext context, StateMe state) {
    return DividerWidget(
      child: AppGestureDetector(
        onTap: () {
          AppRouting.goToUpdateNameScreen(context);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: EditUserListItem(
            rightText: state.userProfile?.name ?? '',
            leftText: 'general_name'.tr(),
          ),
        ),
      ),
    );
  }

  DividerWidget buildEmailRow(BuildContext context, StateMe state) {
    return DividerWidget(
      child: AppGestureDetector(
        onTap: () {
          AppRouting.goToUpdateEmailScreen(context);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: EditUserListItem(
            rightText: state.userProfile?.email ?? '',
            leftText: 'email'.tr(),
          ),
        ),
      ),
    );
  }

  DividerWidget buildGenderRow(StateMe state, AppTextStyle textStyles) {
    String gender = EnumUtils.getGender(state.userProfile?.gender);
    final textStyle = AppTextStyle(context);
    final colors = AppColor(context);
    return DividerWidget(
      child: AppGestureDetector(
        onTap: () async {
          final styleNormal = textStyle.cupertinoAction;
          final styleSelected =
              styleNormal.copyWith(color: colors.primaryColor);
          int selectedGender =
              state.userProfile?.gender ?? EnumUtils.GENDER_NONE;
          final ret = await showCupertinoModalPopup(
            context: context,
            builder: (context) {
              return buildBottomSheetSelectGender(
                  selectedGender, styleSelected, styleNormal, context);
            },
          );
          if (ret is int) {
            state.updateGender(ret);
          }
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: EditUserListItem(
            rightText: gender.isNotEmpty ? gender : 'common_set_now'.tr(),
            leftText: 'gender'.tr(),
            rightStyle: gender.isEmpty
                ? textStyles.bodyRegular.copyWith(
                    color: textStyles.textColorGrey2,
                  )
                : null,
          ),
        ),
      ),
    );
  }

  Widget buildBottomSheetSelectGender(int selectedGender,
      TextStyle styleSelected, TextStyle styleNormal, BuildContext context) {
    return BottomSheetCupertinoChooseType(
      title: "",
      actions: [
        CupertinoActionSheetAction(
          child: Text(
            "common_none".tr(),
            style: selectedGender == EnumUtils.GENDER_NONE
                ? styleSelected
                : styleNormal,
          ),
          onPressed: () async {
            Navigator.of(context).pop(EnumUtils.GENDER_NONE);
          },
        ),
        CupertinoActionSheetAction(
          child: Text(
            "gender_male".tr(),
            style: selectedGender == EnumUtils.GENDER_MALE
                ? styleSelected
                : styleNormal,
          ),
          onPressed: () async {
            Navigator.of(context).pop(EnumUtils.GENDER_MALE);
          },
          isDestructiveAction: true,
        ),
        CupertinoActionSheetAction(
          child: Text(
            "gender_female".tr(),
            style: selectedGender == EnumUtils.GENDER_FEMALE
                ? styleSelected
                : styleNormal,
          ),
          onPressed: () async {
            Navigator.of(context).pop(EnumUtils.GENDER_FEMALE);
          },
        )
      ],
    );
  }

  buildOccupationRow(StateMe state, AppTextStyle textStyles) {
    final meta = ref.watch(StateMetaData.provider);
    final lstOccupation = meta.metaData?.country?.userOccupations ?? [];
    String job = '';
    int jobId = state.userProfile?.occupationId ?? -1;
    for (var item in lstOccupation) {
      if (item.id == jobId) {
        job = item.name ?? '';
      }
    }

    return DividerWidget(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: EditUserListItem(
          rightText: job.isNotEmpty ? job : 'common_set_now'.tr(),
          leftText: 'general_occupation'.tr(),
          rightStyle: job.isEmpty
              ? textStyles.bodyRegular.copyWith(
                  color: textStyles.textColorGrey2,
                )
              : null,
        ),
      ),
    );
  }

  buildDoBRow(StateMe state, AppTextStyle textStyles) {
    String dob = state.userProfile?.birthday ?? '';
    return DividerWidget(
      child: AppGestureDetector(
        onTap: () async {
          var initDate = DateTime.now();
          if (dob.isNotEmpty) {
            try {
              initDate = DateTimeUtils.dateFormatDay.parse(dob);
            } catch (e) {
              logger.e(e);
            }
          }
          final lastDate = DateTime.now();
          if (initDate.isAfter(lastDate)) {
            initDate = lastDate;
          }
          final ret = await showDatePicker(
            context: context,
            initialDate: initDate,
            builder: (BuildContext context, Widget? child) {
              if (child == null) return const SizedBox();
              return Theme(
                data: ThemeData.light().copyWith(
                  colorScheme: const ColorScheme.light(primary: Colors.green),
                ),
                child: child,
              );
            },
            firstDate: DateTime(
              1960,
            ),
            lastDate: DateTime.now(),
          );
          if (ret is DateTime) {
            state.updateDoB(ret);
          }
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: EditUserListItem(
            rightText: dob.isNotEmpty
                ? DateTimeUtils.tryFormat(DateTimeUtils.dateFormatDay,
                    DateTimeUtils.dateOutFormat, dob)
                : 'common_set_now'.tr(),
            leftText: 'general_date_of_birth'.tr(),
            rightStyle: dob.isEmpty
                ? textStyles.bodyRegular.copyWith(
                    color: textStyles.textColorGrey2,
                  )
                : null,
          ),
        ),
      ),
    );
  }
}
