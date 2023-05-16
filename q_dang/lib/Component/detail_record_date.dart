import 'package:flutter/material.dart';
import 'package:q_dang/Component/detail_record_time.dart';
import 'package:q_dang/Constant/colors.dart';
import 'package:q_dang/Utils/data_util.dart';

class DetailRecordDate extends StatelessWidget {
  final DateTime dateTime;

  DetailRecordDate({required this.dateTime});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          DataUtil.DateTimetoStringDate(dateTime),
          style: TextStyle(
            color: kprimaryColor,
          ),
        ),
        Expanded(child: DetailRecordTime(dateTime: dateTime)),
        ElevatedButton(
          onPressed: () {},
          child: Text(
            '이 경기 다시하기 ',
            style: TextStyle(color: Colors.white),
          ),
          style: ElevatedButton.styleFrom(
              backgroundColor: kprimaryColor,
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6))),
        )
      ],
    );
  }
}
