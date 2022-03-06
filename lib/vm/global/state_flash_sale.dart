import 'package:shopeefood_clone/models/list_data_store.dart';
import 'package:shopeefood_clone/utils/common_import.dart';

import '../../models/model_flash_sale.dart';
import '../../services/remote_services.dart';

class StateFlashSale extends ChangeNotifier {
  static final provider = ChangeNotifierProvider((ref) => StateFlashSale());

  final _ongoing = PageDataStoreWithId<ModelFlashSale>();
  final _comingSoon = PageDataStoreWithId<ModelFlashSale>();

  PageDataStoreWithId<ModelFlashSale> get ongoing => _ongoing;

  PageDataStoreWithId<ModelFlashSale> get comingSoon => _comingSoon;

  init() async {
    await Future.delayed(const Duration(seconds: 1));
    _loadData(_ongoing);
    _loadData(_comingSoon);
  }

  Future<void> _loadData(PageDataStoreWithId<ModelFlashSale> dataStore) async {
    dataStore.loadMoreData(
      onUpdate: () {
        notifyListeners();
      },
      loadFunction: () async {
        try {
          var api = RemoteService.getApiService();
          var res = await api.getFlashSale();
          if (res.reply?.itemInfos != null) {
            return PageDataResponse(data: res.reply?.itemInfos ?? []);
          }
        } catch (e) {
          logger.e(e);
        }
        return PageDataResponse(isSuccess: false);
      },
    );
  }
}
