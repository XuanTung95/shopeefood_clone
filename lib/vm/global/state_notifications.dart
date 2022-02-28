import 'package:shopeefood_clone/models/model_notifications.dart';
import 'package:shopeefood_clone/services/remote_services.dart';
import 'package:shopeefood_clone/utils/common_import.dart';

import '../../models/model_delivery.dart';


class StateNotifications extends ChangeNotifier {

  static final provider =
  ChangeNotifierProvider<StateNotifications>((ref) => StateNotifications());

  List<ModelNotification> _notifications = [];

  List<ModelNotification> get notifications => _notifications;

  void init() {
    _getNotifications();
  }

  _getNotifications() async {
    var api = RemoteService.getApiService();
    var res = await api.getNotifications();
    _notifications = res.reply?.notificationInfos ?? [];
    notifyListeners();
  }
}