import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_guide_ti/modules/chart_page/controllers/chart_page_controller.dart';
import 'package:teste_guide_ti/modules/chart_page/views/components/card_to_body_page.dart';
import 'package:teste_guide_ti/modules/chart_page/views/components/chart/chart.dart';

class ChartPage extends StatefulWidget {
  const ChartPage({super.key});

  @override
  State<ChartPage> createState() => _ChartPageState();
}

class _ChartPageState extends State<ChartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(120),
          child: AppBar(
            leading: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.white,
              ),
            ),
            backgroundColor: const Color(0xFF133A3A),
            automaticallyImplyLeading: false,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/logo.png',
                fit: BoxFit.none,
              ),
            ),
            centerTitle: true,
            elevation: 0,
          ),
        ),
        body: GetBuilder<ChartPageController>(
          builder: (ChartPageController controller) => Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 17, 20, 0),
                  child:
                      SizedBox(height: 200, width: 300, child: GraficPage())),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 32, 20, 12),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: const [
                    Text(
                      'PETR4.SA',
                      style: TextStyle(
                        fontFamily: 'Outfit',
                        color: Color(0xFF0F1113),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Wrap(
                spacing: 10.0,
                runSpacing: 10.0,
                children: [
                  CardToBodyPage(
                      content: 'Preço médio',
                      title: controller.price.toString(),
                      icon: Icons.payments),
                  CardToBodyPage(
                      content: 'Corretora',
                      title: controller.exchange!,
                      icon: Icons.supervisor_account_rounded),
                  CardToBodyPage(
                    content: 'Suas cotas',
                    title: controller.quotes.toString(),
                    icon: Icons.web_asset_rounded,
                  ),
                  CardToBodyPage(
                    content: 'Carteira',
                    title: "R\$${controller.wallet.toString()}",
                    icon: Icons.pie_chart_rounded,
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
