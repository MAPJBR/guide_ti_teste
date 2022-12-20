import 'package:get/get.dart';
import 'package:teste_guide_ti/data/services/chart_page_service.dart';
import 'package:teste_guide_ti/modules/chart_page/controllers/chart_page_controller.dart';

class ChartPageBinding implements Bindings {
  final chartPageService = ChartPageService();
  @override
  void dependencies() {
    Get.lazyPut<ChartPageController>(
        () => ChartPageController(chartPageService: chartPageService));
  }
}
