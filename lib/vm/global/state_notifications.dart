import 'package:shopeefood_clone/models/list_data_store.dart';
import 'package:shopeefood_clone/models/model_notifications.dart';
import 'package:shopeefood_clone/services/remote_services.dart';
import 'package:shopeefood_clone/utils/common_import.dart';

import '../../models/model_delivery.dart';

class StateNotifications extends ChangeNotifier {
  static final provider =
      ChangeNotifierProvider<StateNotifications>((ref) => StateNotifications());

  final _notifications = PageDataStoreWithId<ModelNotification>();

  PageDataStoreWithId<ModelNotification> get notifications => _notifications;

  void init() {
    _getNotifications();
  }

  _getNotifications() async {
    _notifications.loadMoreData(onUpdate: () {
      notifyListeners();
    }, loadFunction: () async {
      try {
        var api = RemoteService.getApiService();
        var res = await api.getNotifications();
        if (res.reply?.notificationInfos != null) {
          return PageDataResponse(data: res.reply?.notificationInfos ?? []);
        }
      } catch (e) {
        logger.e(e);
      }
      return PageDataResponse(isSuccess: false);
    });
  }
}
