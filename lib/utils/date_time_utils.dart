import 'package:intl/intl.dart';
import 'package:shopeefood_clone/models/model_notifications.dart';
import 'package:shopeefood_clone/models/model_order.dart';

import '../models/model_voucher.dart';
import 'common_import.dart';

class DateTimeUtils {
  static final dateFormat = DateFormat('yyyy-MM-dd hh:mm:ss');
  static final dateFormatDay = DateFormat('yyyy-MM-dd');
  static final dateOutFormat = DateFormat('dd/MM/yyyy');
  static final dateOutCheckoutFormat = DateFormat('hh:mm - {} dd/MM');
  static final dateOutShortFormat = DateFormat('dd/MM/yy');
  static final dateOutDefaultFormat = DateFormat('dd-MM-yyyy hh:mm');
  static final dateOutFormatDot = DateFormat('dd.MM.yyyy');
  static final dateOutFormatWithTime = DateFormat('dd/MM/yyyy hh:mm');

  static String tryFormat(
      DateFormat inFormat, DateFormat outFormat, String input) {
    try {
      final datetime = inFormat.parse(input);
      return outFormat.format(datetime);
    } catch (e) {
      logger.e(e);
    }
    return '';
  }

  static String formatOnlyDate(DateTime datetime) {
    try {
      return dateOutShortFormat.format(datetime);
    } catch (e) {
      logger.e(e);
    }
    return '';
  }

  static String getTimeFromTo(String from, String to) {
    return '${tryFormat(dateFormat, dateOutFormatWithTime, from)} - ${tryFormat(dateFormat, dateOutFormatWithTime, to)}';
  }

  static String getOrderDate(ModelOrders? order) {
    if (order == null) return '';
    try {
      final datetime = dateFormat.parse(order.orderTime ?? '');
      return dateOutFormat.format(datetime);
    } catch (e) {
      logger.e(e);
    }
    return '';
  }

  static String getDefaultDate(String? input) {
    if (input == null) return '';
    try {
      final datetime = dateFormat.parse(input);
      return dateOutDefaultFormat.format(datetime);
    } catch (e) {
      logger.e(e);
    }
    return '';
  }

  static String getNotificationDate(ModelNotification? notification) {
    if (notification == null) return '';
    try {
      final datetime = dateFormat.parse(notification.createdTime ?? '');
      return dateOutFormatWithTime.format(datetime);
    } catch (e) {
      logger.e(e);
    }
    return '';
  }

  static Duration? getVoucherExpireDay(ModelVoucher? voucher) {
    Duration? res;
    if (voucher == null) return res;
    try {
      final datetime = dateFormat.parse(voucher.endTime ?? '');
      return datetime.difference(DateTime.now());
    } catch (e) {
      logger.e(e);
    }
    return res;
  }

  static String? getVoucherExpiredOn(ModelVoucher? voucher) {
    String? res;
    if (voucher == null) return res;
    try {
      final datetime = dateFormat.parse(voucher.endTime ?? '');
      return dateOutFormatDot.format(datetime);
    } catch (e) {
      logger.e(e);
    }
    return res;
  }
}
