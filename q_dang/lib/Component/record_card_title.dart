import 'package:flutter/material.dart';
import 'package:q_dang/Component/detail_record_time.dart';
import 'package:q_dang/Constant/colors.dart';
import 'package:q_dang/Utils/data_util.dart';

class RecordCardTitle extends StatelessWidget {
  Color mainColor;
  String res;
  DateTime dateTime;

  RecordCardTitle(
      {super.key,
      required this.mainColor,
      required this.res,
      required this.dateTime});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Row(
        children: [
          SizedBox(
            width: 83,
            height: 21,
            child: Container(
              color: mainColor,
              child: Text(
                res,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            width: 4,
          ),
          SizedBox(
            width: 56,
            height: 13,
            child: DetailRecordTime(
              dateTime: dateTime,
            ),
          ),
        ],
      ),
    );
  }
}
