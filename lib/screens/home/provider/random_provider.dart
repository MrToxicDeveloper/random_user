import 'package:flutter/foundation.dart';
import 'package:random_user/screens/home/model/random_model.dart';
import 'package:random_user/utils/api_helper/api_helper.dart';

class RandomProvider extends ChangeNotifier {
  RandomModel? random;

  Future<void> Caller() async {
    ApiHelper apiHelper = ApiHelper();
    random = await apiHelper.apiCaller();
    notifyListeners();
  }
}
