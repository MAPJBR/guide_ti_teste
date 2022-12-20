import 'package:get/get.dart';
import 'package:teste_guide_ti/modules/bindings/chart_binding.dart';
import 'package:teste_guide_ti/modules/bindings/chart_page_binding.dart';
import 'package:teste_guide_ti/modules/bindings/home_page_binding.dart';
import 'package:teste_guide_ti/modules/bindings/main_page_binding.dart';
import 'package:teste_guide_ti/modules/chart_page/views/chart_page.dart';
import 'package:teste_guide_ti/modules/home_page/views/home_page.dart';
import 'package:teste_guide_ti/modules/main_page/views/main_page.dart';

final pages = [
  GetPage(
      name: mainPage,
      page: () => const MainPageGuideTiWidget(),
      binding: MainPageBinding()),
  GetPage(
      name: homePage,
      page: () => const HomePageWidget(),
      binding: HomePageBinding()),
  GetPage(
      name: chartPage,
      page: () => const ChartPage(),
      bindings: [ChartPageBinding(), ChartBinding()]),
];

const String mainPage = '/main-page';
const String homePage = '/home-page';
const String chartPage = '/chart-page';
