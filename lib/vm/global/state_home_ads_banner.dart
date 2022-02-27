import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopeefood_clone/models/model_ads_banner.dart';
import 'package:shopeefood_clone/services/remote_services.dart';
import 'package:shopeefood_clone/utils/common_import.dart';

class StateHomeBanner extends ChangeNotifier {
  static final provider = ChangeNotifierProvider((ref) => StateHomeBanner());

  List<ModelBanner> _banners = [];

  List<ModelBanner> get banners => _banners;

  init() async {
   await _intBanners();
  }

  _intBanners() async {
    await Future.delayed(const Duration(seconds: 1));
    var api = RemoteService.getApiService();
    var res = await api.getHomeAdsBanner();
    _banners = res.reply?.bannerInfos ?? [];
    notifyListeners();
  }
}
