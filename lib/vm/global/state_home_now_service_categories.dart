import 'package:shopeefood_clone/models/list_data_store.dart';
import 'package:shopeefood_clone/models/model_delivery.dart';
import 'package:shopeefood_clone/services/remote_services.dart';
import 'package:shopeefood_clone/vm/global/state_meta_data.dart';

import '../../models/model_meta_response.dart';
import '../../utils/common_import.dart';

class StateHomeNowServiceCategories extends BaseChangeNotifier {
  static final provider = ChangeNotifierProvider((ref) {
    var ret = StateHomeNowServiceCategories();
    ref.listen<StateMetaData>(StateMetaData.provider, (previous, next) {
      ret.updateCategories(next.getNowCategories(1));
    });
    var meta = ref.read(StateMetaData.provider);
    ret.updateCategories(meta.getNowCategories(1));
    return ret;
  });

  List<Categories> get categories => _categories;
  List<Categories> _categories = [];
  int _selectedIndex = 0;
  int _selectedFilter = 0;

  int get selectedIndex => _selectedIndex;

  int get selectedFilter => _selectedFilter;
  final Map<int, Map<int, PageDataStoreWithId<ModelDelivery>>> _pagesData = {};

  bool get showFullScreenLoading {
    var currData = getCurrentData();
    return currData.isLoading && currData.data.isEmpty && !currData.isDone;
  }

  PageDataStoreWithId<ModelDelivery>? prevData;

  void updateCategories(List<Categories> newCategories) {
    _categories = newCategories;
    if (_selectedIndex >= _categories.length) {
      _selectedIndex = 0;
    }
    notifyListeners();
  }

  void resetData() {
    _pagesData.clear();
    notifyListeners();
  }

  PageDataStoreWithId<ModelDelivery> getCurrentData() {
    return _getPageDataOfId(_selectedIndex, _selectedFilter);
  }

  PageDataStoreWithId<ModelDelivery> _getPageDataOfId(int categoryId, int filter) {
    if (_pagesData[categoryId] == null) {
      _pagesData[categoryId] = {};
    }
    var __data = _pagesData[categoryId];
    if (__data![filter] == null) {
      __data[filter] = PageDataStoreWithId<ModelDelivery>();
    }
    var pageData = __data[filter]!;
    return pageData;
  }

  bool _isNeedInitLoadData(PageDataStoreWithId pageData) {
    return !pageData.isDone && !pageData.isLoading && pageData.data.isEmpty;
  }

  void setSelected(int index) {
    if (index == _selectedIndex) return;
    _savePreviousData();
    _selectedIndex = index;
    checkAndLoadNextPage();
    notifyListeners();
  }

  checkAndLoadNextPage() {
    var pageData = _getPageDataOfId(_selectedIndex, _selectedFilter);
    if (_isNeedInitLoadData(pageData)) {
      _loadNextPage(pageData, _selectedIndex, _selectedFilter);
    }
  }

  Future loadNextPage() async {
    var pageData = _getPageDataOfId(_selectedIndex, _selectedFilter);
    await _loadNextPage(pageData, _selectedIndex, _selectedFilter);
  }

  Future _loadNextPage(PageDataStoreWithId<ModelDelivery> pageData, int id, int filter) async {
    await pageData.loadMoreData(
      onUpdate: () {
        notifyListeners();
      },
      loadFunction: () async {
        try {
          var api = RemoteService.getApiService();
          var res = await api.getDeliveryListItem(id, filter, pageData.page, pageData.pageSize);
          if (res.reply?.deliveryInfos != null) {
            return PageDataResponse(data: res.reply?.deliveryInfos ?? [], isSuccess: true);
          }
        } catch (e, st) {
          logger.e(st);
        }
        return PageDataResponse(isSuccess: false);
      },
    );
  }


  void setSelectedFilter(int filter) {
    if (filter == _selectedFilter) return;
    _savePreviousData();
    _selectedFilter = filter;
    checkAndLoadNextPage();
    notifyListeners();
  }

  _savePreviousData() {
    var currData = getCurrentData();
    if (currData.data.isNotEmpty) {
      prevData = currData;
    }
  }

}
