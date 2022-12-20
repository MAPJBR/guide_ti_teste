import 'package:get/get.dart';
import 'package:teste_guide_ti/modules/home_page/controllers/home_page_controller.dart';

class HomePageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomePageController>(() => HomePageController());
  }
}
