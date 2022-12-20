import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_guide_ti/modules/bindings/main_page_binding.dart';
import 'package:teste_guide_ti/modules/main_page/views/main_page.dart';
import 'package:teste_guide_ti/routes/routes.dart';
import 'common/style/theme.dart';

void main() {
  runApp(
    GetMaterialApp(
      getPages: pages,
      theme: lightTheme,
      themeMode: ThemeMode.light,
      unknownRoute: GetPage(
        name: mainPage,
        binding: MainPageBinding(),
        page: () => const MainPageGuideTiWidget(),
      ),
    ),
  );
}
