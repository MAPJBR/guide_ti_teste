import 'package:teste_guide_ti/data/models/indicators_model.dart';
import 'package:teste_guide_ti/data/models/meta_model.dart';

class Result {
  Meta? meta;
  List<int>? timestamp;
  Indicators? indicators;

  Result(
      {required this.meta, required this.indicators, required this.timestamp});

  Result.fromJson(Map<String, dynamic> json) {
    meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
    timestamp = json['timestamp'].cast<int>();
    indicators = json['indicators'] != null
        ? Indicators.fromJson(json['indicators'])
        : null;
  }
}
