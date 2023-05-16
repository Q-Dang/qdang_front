import 'package:flutter/material.dart';

import '../Constant/colors.dart';
import '../Utils/data_util.dart';

class DetailRecordTime extends StatelessWidget {
  final DateTime dateTime;

  DetailRecordTime({required this.dateTime});
  @override
  Widget build(BuildContext context) {
    return Text(DataUtil.DateTimetoString(dateTime),
        style: TextStyle(
          color: ksecondaryColor,
          fontSize: 9,
          fontWeight: FontWeight.w700,
        ));
  }
}
