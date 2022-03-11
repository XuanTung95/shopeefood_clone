import 'package:shopeefood_clone/models/list_data_store.dart';
import 'package:shopeefood_clone/utils/common_import.dart';

import '../../models/model_draft_order.dart';
import '../../services/remote_services.dart';

class StateDraftCart extends ChangeNotifier {
  static final provider = ChangeNotifierProvider((ref) => StateDraftCart());
  final _draftCart = PageDataStoreWithId<ModelDraftCarts>();

  PageDataStoreWithId<ModelDraftCarts> get draftCart => _draftCart;
  String _selectedService = 'All Services';


  set selectedService(String value) {
    _selectedService = value;
    notifyListeners();
  }

  String get selectedService => _selectedService;

  Future init() async {
    _draftCart.reset();
    await loadDraftCart();
  }

  loadDraftCart() async {
    await _draftCart.loadMoreData(
      onUpdate: () {
        notifyListeners();
      },
      loadFunction: () async {
        try {
          var api = RemoteService.getApiService();
          var res = await api.getDraftOrder();
          if (res.reply?.draftCarts != null) {
            return PageDataResponse(data: res.reply?.draftCarts ?? []);
          }
        } catch (e, st) {
          logger.e('$e $st');
        }
        return PageDataResponse(isSuccess: false);
      },
    );
  }
}
