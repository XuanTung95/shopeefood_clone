import 'package:shopeefood_clone/models/model_feedback_response.dart';

import '../../models/list_data_store.dart';
import '../../services/remote_services.dart';
import '../../utils/common_import.dart';

class StateUserFeedback extends ChangeNotifier {
  static final provider = ChangeNotifierProvider.family
      .autoDispose((ref, String id) => StateUserFeedback());

  final pageData = PageDataStoreWithId<ModelUserFeedbacks>();

  Future loadData() async {
    await pageData.loadMoreData(
      onUpdate: () {
        notifyListeners();
      },
      loadFunction: () async {
        try {
          var api = RemoteService.getApiService();
          var res = await api.getFeedback();
          if (res.reply != null) {
            return PageDataResponse(
                data: res.reply?.userFeedbacks ?? [], isSuccess: true);
          }
        } catch (e, st) {
          logger.e(st);
        }
        return PageDataResponse(isSuccess: false);
      },
    );
  }
}
