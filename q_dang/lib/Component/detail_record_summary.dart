import 'package:flutter/material.dart';
import 'package:q_dang/Constant/colors.dart';

class DetailRecordSummary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> members = ['김익명', '김게임'];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _DetailRecordCategory(),
        SizedBox(
          child: Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 10),
            child: Container(color: kthirdColor),
          ),
          height: 100,
          width: 1,
        ),
        _DetailRecordMember(members: members),
        SizedBox(
          child: Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 10),
            child: Container(color: kthirdColor),
          ),
          height: 100,
          width: 1,
        ),
        _DetailRecordTime(dateTime: DateTime.now()),
      ],
    );
  }
}

class _DetailRecordCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          '종목',
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Icon(
            Icons.workspaces,
            color: kprimaryColor,
          ),
        ),
        Text(
          '3구',
          textAlign: TextAlign.center,
          style: TextStyle(color: kprimaryColor),
        )
      ],
    );
  }
}

class _DetailRecordMember extends StatelessWidget {
  List<String> members;

  _DetailRecordMember({required this.members});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          '멤버',
          textAlign: TextAlign.center,
        ),
        Row(
          children: members
              .map((e) => Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Icon(
                          Icons.circle,
                          color: kthirdColor,
                        ),
                      ),
                      Text(e)
                    ],
                  ))
              .toList(),
        )
      ],
    );
  }
}

class _DetailRecordTime extends StatelessWidget {
  DateTime dateTime;

  _DetailRecordTime({required this.dateTime});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          '경기 시간',
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Text(
            dateTime.minute.toString() + "m",
            textAlign: TextAlign.center,
            style: TextStyle(color: kprimaryColor),
          ),
        ),
      ],
    );
  }
}
