import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

Widget leftTitleWidgets(double value, TitleMeta meta) {
  const style = TextStyle(
    color: Color(0xff67727d),
    fontWeight: FontWeight.bold,
    fontSize: 15,
  );
  String text;
  switch (value.toInt()) {
    case 20:
      text = '20K';
      break;
    case 21:
      text = '21K';
      break;
    case 22:
      text = '22K';
      break;
    case 23:
      text = '23K';
      break;
    case 24:
      text = '24K';
      break;
    case 25:
      text = '25K';
      break;
    case 26:
      text = '26K';
      break;
    case 27:
      text = '27K';
      break;
    case 28:
      text = '28K';
      break;
    case 29:
      text = '29K';
      break;
    case 30:
      text = '30K';
      break;
    default:
      return Container();
  }

  return Text(text, style: style, textAlign: TextAlign.left);
}
