import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:q_dang/Constant/colors.dart';

class AbilityGraph extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    const ticks = [10, 20, 30, 40, 50];
    var features = ["에버리지", "장타율", "득점율", "인터벌", "HR"];
    var data = [20, 30, 10, 20, 50];

    return SizedBox(
      height: 200,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: RadarChart(
          RadarChartData(
            dataSets: [
              RadarDataSet(
                fillColor: kprimaryColor,
                borderColor: Color(0x00000000),
                entryRadius: 5,
                dataEntries: data.map((e) => RadarEntry(value: e.toDouble())).toList(),
              ),
            ],
            titleTextStyle: TextStyle(
              fontSize: 10,
              fontFamily: 'NotoKr',
              fontWeight: FontWeight.w700
            ),
            getTitle: (index, angle) {
              switch(index){
                case 0:
                  return RadarChartTitle(text: '에버리지', angle: 0);
                case 1:
                  return RadarChartTitle(text: '장타율', angle: 0);
                case 2:
                  return RadarChartTitle(text: '득점율', angle: 0);
                case 3:
                  return RadarChartTitle(text: '인터벌', angle: 0);
                case 4:
                  return RadarChartTitle(text: 'HR', angle: 0);
                default:
                  return const RadarChartTitle(text: '');
              };
            },
            radarShape: RadarShape.polygon,
            radarBorderData: BorderSide(color: Colors.black, width: 2),
            tickBorderData: BorderSide(color: Color(0x00000000)),
            ticksTextStyle: TextStyle(color: Color(0x00000000)),
          ),
          swapAnimationDuration: Duration(milliseconds: 150),
          swapAnimationCurve: Curves.linear,
        ),
      ),
    );
  }
}