import 'package:shopeefood_clone/models/model_voucher.dart';
import 'package:shopeefood_clone/services/remote_services.dart';
import 'package:shopeefood_clone/utils/common_import.dart';

class StateMyVoucher extends BaseChangeNotifier {
  static final provider = ChangeNotifierProvider((ref) => StateMyVoucher());

  List<ModelVoucher> _validVoucher = [];
  final List<ModelVoucher> _usedVoucher = [];
  List<ModelVoucher> _invalidVoucher = [];

  init() {
    _getVoucher();
  }

  List<ModelVoucher> get validVoucher => _validVoucher;

  List<ModelVoucher> get usedVoucher => _usedVoucher;

  List<ModelVoucher> get invalidVoucher => _invalidVoucher;

  _getVoucher() async {
    final api = RemoteService.getApiService();
    final res = await api.getMyVoucher();
    _validVoucher = res.reply?.promotionInfos ?? [];

    final resInvalid = await api.getInvalidVoucher();
    _invalidVoucher = resInvalid.reply?.promotionInfos ?? [];
    notifyListeners();
  }
}
