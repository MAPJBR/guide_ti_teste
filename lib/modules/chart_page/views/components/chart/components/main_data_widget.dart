import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:teste_guide_ti/modules/chart_page/views/components/chart/chart_controller.dart';
import 'package:teste_guide_ti/modules/chart_page/views/components/chart/components/left_title_widget.dart';

List<Color> gradientColors = [
  const Color(0xff23b6e6),
  const Color(0xff02d39a),
];

LineChartData mainData({required ChartController controller}) {
  return LineChartData(
    gridData: FlGridData(
      show: true,
      drawVerticalLine: true,
      horizontalInterval: 1,
      verticalInterval: 1,
      getDrawingHorizontalLine: (value) {
        return FlLine(
          color: const Color(0xff37434d),
          strokeWidth: 1,
        );
      },
      getDrawingVerticalLine: (value) {
        return FlLine(
          color: const Color(0xff37434d),
          strokeWidth: 1,
        );
      },
    ),
    titlesData: FlTitlesData(
      show: true,
      rightTitles: AxisTitles(
        sideTitles: SideTitles(showTitles: false),
      ),
      topTitles: AxisTitles(
        sideTitles: SideTitles(showTitles: false),
      ),
      bottomTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          reservedSize: 30,
          interval: 5,
        ),
      ),
      leftTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          interval: 5,
          getTitlesWidget: leftTitleWidgets,
          reservedSize: 42,
        ),
      ),
    ),
    borderData: FlBorderData(
      show: true,
      border: Border.all(color: const Color(0xff37434d)),
    ),
    minX: 0,
    maxX: 29,
    minY: controller.minValue - 0.1,
    maxY: controller.maxValue,
    lineBarsData: [
      LineChartBarData(
        spots: [
          FlSpot(0, controller.listValues.first),
          FlSpot(1, controller.listValues[1]),
          FlSpot(2, controller.listValues[2]),
          FlSpot(3, controller.listValues[3]),
          FlSpot(4, controller.listValues[4]),
          FlSpot(5, controller.listValues[5]),
          FlSpot(6, controller.listValues[6]),
          FlSpot(7, controller.listValues[7]),
          FlSpot(8, controller.listValues[8]),
          FlSpot(9, controller.listValues[9]),
          FlSpot(10, controller.listValues[10]),
          FlSpot(11, controller.listValues[11]),
          FlSpot(12, controller.listValues[12]),
          FlSpot(13, controller.listValues[13]),
          FlSpot(14, controller.listValues[14]),
          FlSpot(15, controller.listValues[15]),
          FlSpot(16, controller.listValues[16]),
          FlSpot(17, controller.listValues[17]),
          FlSpot(18, controller.listValues[18]),
          FlSpot(19, controller.listValues[19]),
          FlSpot(20, controller.listValues[20]),
          FlSpot(21, controller.listValues[21]),
          FlSpot(22, controller.listValues[22]),
          FlSpot(23, controller.listValues[23]),
          FlSpot(24, controller.listValues[24]),
          FlSpot(25, controller.listValues[25]),
          FlSpot(26, controller.listValues[26]),
          FlSpot(27, controller.listValues[27]),
          FlSpot(28, controller.listValues[28]),
          FlSpot(29, controller.listValues[29]),
        ],
        isCurved: true,
        gradient: LinearGradient(
          colors: gradientColors,
        ),
        barWidth: 5,
        isStrokeCapRound: true,
        dotData: FlDotData(
          show: false,
        ),
        belowBarData: BarAreaData(
          show: true,
          gradient: LinearGradient(
            colors:
                gradientColors.map((color) => color.withOpacity(0.3)).toList(),
          ),
        ),
      ),
    ],
  );
}
