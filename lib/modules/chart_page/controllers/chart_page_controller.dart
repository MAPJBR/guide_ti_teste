import 'package:get/get.dart';
import 'package:teste_guide_ti/data/models/chart_model.dart';
import 'package:teste_guide_ti/data/services/chart_page_service.dart';

import 'package:teste_guide_ti/routes/routes.dart';

class ChartPageController extends GetxController {
  ChartPageController({required this.chartPageService});
  final ChartPageService chartPageService;
  double price = 0.0;
  String? exchange = "";
  double quotes = 100.0;
  double wallet = 0.0;

  @override
  void onInit() {
    _getInfos();

    super.onInit();
  }

  Future<void> _getInfos() async {
    try {
      ChartModel model = await chartPageService.getInfos();
      _decodeToPage(model);
    } catch (e) {
      const GetSnackBar(message: 'Ocorreu um erro, tente novamente!');
      rethrow;
    }
  }

  void _decodeToPage(ChartModel model) {
    price = model.chart!.result!.first.meta!.regularMarketPrice!;
    exchange = model.chart!.result!.first.meta!.exchangeName;
    _walletValue(price);
    update();
  }

  void _walletValue(double price) {
    wallet = price * quotes;
  }

  void goToHomePage() {
    Get.toNamed(homePage);
  }
}
