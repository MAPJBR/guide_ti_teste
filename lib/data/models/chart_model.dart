import 'package:teste_guide_ti/data/models/result_model.dart';

class ChartModel {
  Chart? chart;

  ChartModel({this.chart});

  ChartModel.fromJson(Map<String, dynamic> json) {
    chart = json['chart'] != null ? Chart.fromJson(json['chart']) : null;
  }
}

class Chart {
  List<Result>? result;

  Chart({required this.result});

  Chart.fromJson(Map<String, dynamic> json) {
    if (json['result'] != null) {
      result = <Result>[];
      json['result'].forEach((v) {
        result!.add(Result.fromJson(v));
      });
    }
  }
}
