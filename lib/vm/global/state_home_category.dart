import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopeefood_clone/models/model_category.dart';
import 'package:shopeefood_clone/services/remote_services.dart';
import 'package:shopeefood_clone/utils/common_import.dart';

class StateHomeCategory extends ChangeNotifier {
  static final provider = ChangeNotifierProvider((ref) => StateHomeCategory());

  List<ModelHomeSquare> _categories = [];

  List<ModelHomeSquare> get categories => _categories;

  init() async {
   await _intCategory();
  }

  _intCategory() async {
    await Future.delayed(const Duration(seconds: 1));
    var api = RemoteService.getApiService();
    var res = await api.getHomeSquare();
    _categories = res.reply?.homeSquareInfo ?? [];
    notifyListeners();
  }
}