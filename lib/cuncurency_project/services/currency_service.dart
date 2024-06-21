import 'package:fl001/cuncurency_project/models/currency_model.dart';

class CurrencyService {
  Future<List<CurrencyModel>> GetsAsync() async {
    await Future.delayed(Duration(seconds: 3));
    return CurrencyModel.GetAll();
  }
}
