import 'package:shopeefood_clone/utils/common_import.dart';

class ListDataStore<T> {
  final List<T> _data = [];
  bool isDone = false;
  bool isError = false;
  bool _isLoading = false;

  bool get isLoading => _isLoading;

  set isLoading(bool value) {
    _isLoading = value;
  }

  List<T> get data => _data;

  void addData(List<T> value) {
    _data.addAll(value);
  }

  void reset() {
    isLoading = false;
    _data.clear();
    isDone = false;
    isError = false;
  }
}

class PageDataStore<T> {
  final _list = ListDataStore<T>();
  final PageParam _param;
  dynamic error;

  PageDataStore() : _param = PageParam();

  List<T> get data => _list.data;

  int get page => _param.page;

  int get pageSize => _param.pageSize;

  bool get isDone => _list.isDone;

  bool get isError => _list.isError;

  bool get isLoading => _list.isLoading;

  bool get shouldRunLoadData => isLoading == false && isDone == false;
  bool get shouldLoadFirstData => shouldRunLoadData && data.isEmpty;

  void reset() {
    _list.reset();
    _param.reset();
  }

  void startLoading() => _list.isLoading = true;

  void loadSuccess(List<T> data, {bool isDone = false}) {
    _list.isLoading = false;
    _param.nextPage();
    _list.addData(data);
    _list.isDone = isDone;
    error = null;
  }

  void loadError({dynamic error, bool showError = true}) {
    _list.isLoading = false;
    this.error = error;
    _list.isError = showError;
  }
}

class PageDataStoreWithId<T> extends PageDataStore<T> {
  int _id = 0;

  int get id => _id;

  int newId() {
    _id++;
    return _id;
  }

  bool isValid(int id) => id == _id;

  Future<bool> loadMoreData(
      {required VoidCallback onUpdate,
      required Future<PageDataResponse<T>> Function() loadFunction}) async {
    if (!shouldRunLoadData) {
      return false;
    }
    int id = newId();
    bool success = false;
    try {
      startLoading();
      onUpdate.call();

      var res = await loadFunction();
      if (!isValid(id)) {
        // aborted
        return false;
      }
      if (res.isSuccess) {
        loadSuccess(res.data ?? []);
        success = true;
      }
    } catch (e, st) {
      logger.e(st);
    }
    if (!success) {
      loadError();
    }
    onUpdate.call();
    return success;
  }
}

class PageDataResponse<T> {
  final List<T>? data;
  final bool isDone;
  final bool isSuccess;

  PageDataResponse({this.data, this.isDone = false, this.isSuccess = true});
}

class PageParam {
  int _page = 0;
  final int _pageSize;
  final int _initPage;

  int get page => _page;

  int get pageSize => _pageSize;

  int get initPage => _initPage;

  PageParam({int pageSize = 20, int initPage = 0})
      : _pageSize = pageSize,
        _initPage = initPage,
        _page = initPage;

  void nextPage() {
    _page++;
  }

  void reset() {
    _page = 0;
  }
}
