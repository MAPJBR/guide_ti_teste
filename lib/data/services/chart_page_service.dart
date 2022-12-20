import 'package:dio/dio.dart';
import 'package:teste_guide_ti/common/consts/service_consts.dart';
import 'package:teste_guide_ti/data/models/chart_model.dart';

class ChartPageService {
  Future<ChartModel> getInfos() async {
    try {
      return Dio()
          .get(ServiceConsts.ptr4sa)
          .then((value) => ChartModel.fromJson(value.data));
    } catch (e) {
      rethrow;
    }
  }
}
