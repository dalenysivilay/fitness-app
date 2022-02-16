import 'package:flutter/material.dart';

class WeeklyStats extends StatelessWidget {
  const WeeklyStats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    const double largeStatHeight = 64.0;
    const double mediumStatHeight = 32.0;
    const double boxPadding = 32.0;
    return SizedBox(
      height: 100.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              children: const [
                CaloriesWidget(),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: const [
                TimeWidget(
                    boxPadding: boxPadding, mediumStatHeight: mediumStatHeight),
                ExercisesWidget(
                    boxPadding: boxPadding, mediumStatHeight: mediumStatHeight),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ExercisesWidget extends StatelessWidget {
  const ExercisesWidget({
    Key? key,
    required this.boxPadding,
    required this.mediumStatHeight,
  }) : super(key: key);

  final double boxPadding;
  final double mediumStatHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: boxPadding,
        vertical: boxPadding,
      ),
      height: mediumStatHeight,
      color: Colors.blue,
    );
  }
}

class TimeWidget extends StatelessWidget {
  const TimeWidget({
    Key? key,
    required this.boxPadding,
    required this.mediumStatHeight,
  }) : super(key: key);

  final double boxPadding;
  final double mediumStatHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("⌛"),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("Time"),
              Text("16h"),
            ],
          ),
        ],
      ),
      decoration: const BoxDecoration(
        color: Colors.green,
      ),
    );
  }
}

class CaloriesWidget extends StatelessWidget {
  const CaloriesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      padding: const EdgeInsets.only(right: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 9.0),
                child: const Text("🔥"),
              ),
              const Text("2,300"),
              const Text("Calories Burned"),
            ],
          ),
        ],
      ),
      decoration: const BoxDecoration(
        color: Colors.purple,
      ),
    );
  }
}
