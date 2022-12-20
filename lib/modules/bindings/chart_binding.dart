import 'package:get/get.dart';
import 'package:teste_guide_ti/data/services/chart_page_service.dart';
import 'package:teste_guide_ti/modules/chart_page/views/components/chart/chart_controller.dart';

class ChartBinding implements Bindings {
  final chartPageService = ChartPageService();
  @override
  void dependencies() {
    Get.lazyPut<ChartController>(
        () => ChartController(chartPageService: chartPageService));
  }
}
