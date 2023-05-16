import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

import '../Constant/colors.dart';

class DetailRecordScoreGraph extends StatelessWidget {
  const DetailRecordScoreGraph({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 20, 0, 12),
          child: Text(
            '득점 그래프',
            style: TextStyle(color: kprimaryColor),
          ),
        ),
        _ScoreGraph(),
      ],
    );
  }
}

class _ScoreGraph extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: kprimaryColor, width: 2)),
        child: Column(
          children: [
            SfCartesianChart(
              primaryXAxis: CategoryAxis(),
              legend: Legend(
                  isVisible: true,
                  position: LegendPosition.top,
                  textStyle: TextStyle(fontSize: 8, fontFamily: 'NotoKr')),
              tooltipBehavior: TooltipBehavior(enable: true),
              series: <ChartSeries<_testData, int>>[
                LineSeries<_testData, int>(
                  color: kprimaryColor,
                  dataSource: _testData.getTestData(),
                  xValueMapper: (_testData data, _) => data.turn,
                  yValueMapper: (_testData data, _) => data.score,
                  name: '홍길동',
                ),
                LineSeries<_testData, int>(
                    color: kthirdColor,
                    dataSource: _testData.getTestData2(),
                    xValueMapper: (_testData data, _) => data.turn,
                    yValueMapper: (_testData data, _) => data.score,
                    name: '김익명'),
                LineSeries<_testData, int>(
                    color: kthirdColor,
                    dataSource: _testData.getTestData3(),
                    xValueMapper: (_testData data, _) => data.turn,
                    yValueMapper: (_testData data, _) => data.score,
                    name: '김게임'),
              ],
            ),
          ],
        ));
  }
}

class _testData {
  _testData(this.turn, this.score);

  static List<_testData> getTestData() {
    return [
      _testData(0, 0),
      _testData(1, 10),
      _testData(2, 30),
      _testData(3, 30),
      _testData(4, 60)
    ];
  }

  static List<_testData> getTestData3() {
    return [
      _testData(0, 0),
      _testData(1, 20),
      _testData(2, 50),
      _testData(3, 100),
      _testData(4, 80)
    ];
  }

  static List<_testData> getTestData2() {
    return [
      _testData(0, 0),
      _testData(1, 0),
      _testData(2, 10),
      _testData(3, 20),
      _testData(4, 20),
    ];
  }

  final int turn;
  final int score;
}
