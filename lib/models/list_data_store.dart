class ListDataStore<T> {
  final List<T> _data = [];
  bool isDone = false;
  bool isError = false;
  bool isLoading = false;

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

  int newId() {
    _id++;
    return _id;
  }

  bool isValid(int id) => id == _id;
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
