import 'package:flutter/material.dart';
import 'package:local/widgets/app_bar.dart';
import 'package:local/widgets/weekly_stats.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            CustomAppBar(),
            Text("Welcome, Daleny"),
            WeeklyStats(),
          ],
        ),
      ),
    );
  }
}
