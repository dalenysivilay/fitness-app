import 'package:flutter/material.dart';
import 'package:local/widgets/activity.dart';
import 'package:local/widgets/app_bar.dart';
import 'package:local/widgets/weekly_stats.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const widgetSpacing = SizedBox(height: 16.0);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              CustomAppBar(),
              widgetSpacing,
              WelcomeHeading(),
              widgetSpacing,
              WeeklyStats(),
              widgetSpacing,
              ActivityWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class WelcomeHeading extends StatelessWidget {
  const WelcomeHeading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Padding(
          padding: EdgeInsets.only(bottom: 8.0),
          child: Text("Welcome, "),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 8.0),
          child: Text("Daleny"),
        ),
      ],
    );
  }
}
