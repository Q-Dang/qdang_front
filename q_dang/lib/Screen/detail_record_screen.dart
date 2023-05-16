import 'package:flutter/material.dart';
import 'package:q_dang/Component/detail_record_appbar.dart';
import 'package:q_dang/Component/detail_record_date.dart';
import 'package:q_dang/Component/detail_record_result.dart';
import 'package:q_dang/Component/detail_record_score_graph.dart';
import 'package:q_dang/Component/detail_record_summary.dart';
import 'package:q_dang/Constant/colors.dart';

import '../Component/detail_record_ability_graph.dart';

class DetailRecordScreen extends StatelessWidget {
  final int id;
  DetailRecordScreen({super.key, required this.id});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: DetailRecordAppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                DetailRecordDate(dateTime: DateTime.now()),
                DetailRecordSummary(),
                SizedBox(
                  child: Container(color: kthirdColor),
                  height: 1,
                ),
                DetailRecordResult(),
                DetailRecordScoreGraph(),
                DetailRecordAbilityGraph(),
              ],
            ),
          ),
        ));
  }
}
