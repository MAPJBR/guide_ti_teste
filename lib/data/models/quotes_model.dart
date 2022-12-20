class Quote {
  List<double>? high;
  List<double>? open;
  List<double>? low;
  List<double>? close;
  List<int>? volume;

  Quote({this.high, this.open, this.low, this.close, this.volume});

  Quote.fromJson(Map<String, dynamic> json) {
    if (json['open'] != null) {
      open = <double>[];
      json['open'].forEach((v) {
        if (v != null) {
          open!.add(v);
        }
      });
    }
    if (json['high'] != null) {
      high = <double>[];
      json['high'].forEach((v) {
        if (v != null) {
          high!.add(v);
        }
      });
    }
    if (json['low'] != null) {
      low = <double>[];
      json['low'].forEach((v) {
        if (v != null) {
          low!.add(v);
        }
      });
    }
    if (json['close'] != null) {
      close = <double>[];
      json['close'].forEach((v) {
        if (v != null) {
          close!.add(v);
        }
      });
    }
    if (json['volume'] != null) {
      volume = <int>[];
      json['volume'].forEach((v) {
        if (v != null) {
          volume!.add(v);
        }
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['high'] = high;
    data['open'] = open;
    data['low'] = low;
    data['close'] = close;
    data['volume'] = volume;
    return data;
  }
}
