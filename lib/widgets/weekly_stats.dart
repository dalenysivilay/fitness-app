import 'package:flutter/material.dart';

class WeeklyStats extends StatelessWidget {
  const WeeklyStats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    const double largeStatHeight = 64.0;
    const double mediumStatHeight = 32.0;
    const double boxPadding = 32.0;
    return Container(
      height: 120.0,
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: boxPadding, vertical: boxPadding),
                height: largeStatHeight,
                color: Colors.purple,
              ),
            ],
          ),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: boxPadding,
                  vertical: boxPadding,
                ),
                height: mediumStatHeight,
                color: Colors.green,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: boxPadding,
                  vertical: boxPadding,
                ),
                height: mediumStatHeight,
                color: Colors.blue,
              )
            ],
          )
        ],
      ),
    );
  }
}
