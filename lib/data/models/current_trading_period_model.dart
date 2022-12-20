import 'package:teste_guide_ti/data/models/pre_model.dart';

class CurrentTradingPeriod {
  Pre? pre;
  Pre? regular;
  Pre? post;

  CurrentTradingPeriod({this.pre, this.regular, this.post});

  CurrentTradingPeriod.fromJson(Map<String, dynamic> json) {
    pre = json['pre'] != null ? Pre.fromJson(json['pre']) : null;
    regular = json['regular'] != null ? Pre.fromJson(json['regular']) : null;
    post = json['post'] != null ? Pre.fromJson(json['post']) : null;
  }
}
