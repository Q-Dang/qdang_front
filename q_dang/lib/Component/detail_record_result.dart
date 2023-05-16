import 'package:flutter/material.dart';
import 'package:q_dang/Constant/colors.dart';

class DetailRecordResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 20, 0, 12),
          child: Text(
            '경기 결과',
            style: TextStyle(color: kprimaryColor),
          ),
        ),
        SizedBox(
          height: 340,
          width: width,
          child: Stack(
            children: [
              Positioned(
                top: 220,
                child: _DetailResult(
                  mainColor: kthirdColor,
                  width: width,
                ),
              ),
              Positioned(
                top: 110,
                child: _DetailResult(
                  mainColor: kthirdColor,
                  width: width,
                ),
              ),
              _DetailResult(
                mainColor: kprimaryColor,
                width: width,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _DetailResult extends StatelessWidget {
  double width;
  Color mainColor;

  _DetailResult({required this.mainColor, required this.width});

  @override
  Widget build(BuildContext context) {
    width -= 32;
    return Container(
      height: 120,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: mainColor,
          boxShadow: [
            BoxShadow(
                color: Color(0xFF787878), offset: Offset(0, 0), blurRadius: 8.0)
          ]),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _DetailRecordResultIcon(
            mainColor: mainColor,
            width: width,
          ),
          _DetailRecordRedultScore(
            mainColor: mainColor,
            width: width,
          )
        ],
      ),
    );
  }
}

class _DetailRecordResultIcon extends StatelessWidget {
  double width;
  Color mainColor;

  _DetailRecordResultIcon({required this.mainColor, required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      width: width / 4,
      child: Center(
        child: Container(
          width: 66,
          height: 66,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50), color: Colors.white),
          child: Icon(
            Icons.workspaces,
            size: 33,
            color: mainColor,
          ),
        ),
      ),
    );
  }
}

class _DetailRecordRedultScore extends StatelessWidget {
  Color mainColor;
  double width;
  _DetailRecordRedultScore({required this.mainColor, required this.width});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: width * 0.75 - 20,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5), color: mainColor),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 3, horizontal: 15),
                    child: Text(
                      '승리',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '홍길동',
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  '점수',
                  style: TextStyle(fontSize: 10, color: kthirdColor),
                ),
                Text(
                  '마무리 점수',
                  style: TextStyle(fontSize: 10, color: kthirdColor),
                ),
                Text(
                  'HR',
                  style: TextStyle(fontSize: 10, color: kthirdColor),
                ),
                Text(
                  '득점율',
                  style: TextStyle(fontSize: 10, color: kthirdColor),
                ),
              ],
            ),
            SizedBox(
              width: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '',
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  '200/200',
                  style: TextStyle(fontSize: 10, color: kprimaryColor),
                ),
                Text(
                  '2/2',
                  style: TextStyle(fontSize: 10, color: kprimaryColor),
                ),
                Text(
                  '5',
                  style: TextStyle(fontSize: 10, color: kprimaryColor),
                ),
                Text(
                  '70%',
                  style: TextStyle(fontSize: 10, color: kprimaryColor),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
