

import 'package:intl/intl.dart';
import 'package:shopeefood_clone/models/model_notifications.dart';
import 'package:shopeefood_clone/models/model_order.dart';

import 'common_import.dart';

class DateTimeUtils {
  static final dateFormat = DateFormat('yyyy-MM-dd hh:mm:ss');
  static final dateOutFormat = DateFormat('dd/MM/yyyy');
  static final dateOutFormatWithTime = DateFormat('dd/MM/yyyy hh:mm');


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
}