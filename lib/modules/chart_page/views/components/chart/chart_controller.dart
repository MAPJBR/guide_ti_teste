import 'dart:math';
import 'package:get/get.dart';
import 'package:teste_guide_ti/data/models/chart_model.dart';
import 'package:teste_guide_ti/data/services/chart_page_service.dart';

class ChartController extends GetxController {
  ChartController({required this.chartPageService});

  final ChartPageService chartPageService;
  List<double> listValues = [];
  double minValue = 0.0;
  double calcPercentage = 0.0;
  double maxValue = 0.0;

  @override
  void onInit() {
    _getInfos();
    super.onInit();
  }

  Future<void> _getInfos() async {
    try {
      ChartModel model = await chartPageService.getInfos();
      _getInfoChart(model);
    } catch (e) {
      const GetSnackBar(message: 'Ocorreu um erro, tente novamente!');
      rethrow;
    }
  }

  _getInfoChart(ChartModel chart) async {
    int length =
        chart.chart!.result!.first.indicators!.quote!.first.open!.length;

    for (int day = 30; day > 0; day--) {
      listValues.add(double.parse(chart
          .chart!.result!.first.indicators!.quote!.first.open![length - day]
          .toStringAsFixed(2)));
    }

    minValue = listValues.reduce(min);

    maxValue = listValues.reduce(max).ceil().toDouble();

    calcPercentage = ((listValues[29] / listValues.first) - 1) * 100;

    calcPercentage = double.parse(calcPercentage.toStringAsFixed(2));

    update();
  }
}
