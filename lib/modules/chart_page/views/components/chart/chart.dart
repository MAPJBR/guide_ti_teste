import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_guide_ti/modules/chart_page/views/components/chart/chart_controller.dart';
import 'package:teste_guide_ti/modules/chart_page/views/components/chart/components/main_data_widget.dart';

class GraficPage extends StatefulWidget {
  const GraficPage({super.key});

  @override
  State<GraficPage> createState() => _GraficPageState();
}

class _GraficPageState extends State<GraficPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context);
    return GetBuilder<ChartController>(
      builder: (ChartController controller) => Container(
        color: const Color(0xff232d37),
        child: controller.listValues.isEmpty
            ? Center(
                child: CircularProgressIndicator(
                  color: gradientColors[1],
                ),
              )
            : Column(
                children: [
                  SizedBox(
                    height: size.padding.top,
                  ),
                  Stack(
                    children: <Widget>[
                      SizedBox(
                        height: 200,
                        width: size.size.width,
                        child: AspectRatio(
                          aspectRatio: 9.0 / 16.0,
                          child: DecoratedBox(
                            decoration: const BoxDecoration(
                              color: Color(0xff232d37),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                right: 18,
                                left: 12,
                                top: 24,
                                bottom: 12,
                              ),
                              child: LineChart(
                                mainData(controller: controller),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
      ),
    );
  }
}
