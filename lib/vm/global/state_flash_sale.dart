
import 'package:shopeefood_clone/utils/common_import.dart';

import '../../models/model_flash_sale.dart';
import '../../services/remote_services.dart';

class StateFlashSale extends ChangeNotifier {
  static final provider = ChangeNotifierProvider((ref) => StateFlashSale());

  List<ModelFlashSale> _ongoing = [];
  List<ModelFlashSale> _comingSoon = [];

  List<ModelFlashSale> get ongoing => _ongoing;

  List<ModelFlashSale> get comingSoon => _comingSoon;

  init() async {
    await Future.delayed(const Duration(seconds: 1));
    var api = RemoteService.getApiService();
    var res = await api.getFlashSale();
    _ongoing = res.reply?.itemInfos ?? [];
    _comingSoon = _ongoing;
    notifyListeners();
  }
}