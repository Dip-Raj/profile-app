import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class PieChartWidget extends StatelessWidget {
  PieChartWidget({
    Key? key,
  }) : super(key: key);

  final Map<String, double> dataMap = {
    "Flutter": 75,
    "Node": 75,
    "HTML": 80,
    "CSS": 60,
    "React": 40,
    "Java": 60,
    "C#": 60
  };

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25.0),
        child: PieChart(
          dataMap: dataMap,
          chartRadius: MediaQuery.of(context).size.width / 3.2,
          chartType: ChartType.ring,
          ringStrokeWidth: 32,
          chartValuesOptions: const ChartValuesOptions(
            showChartValuesInPercentage: true,
          ),
          // centerText: "SKILLS",
        ),
      ),
    );
  }
}
