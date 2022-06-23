import 'package:flutter/material.dart';
import 'package:project_ecc/widgets/bottom_navigation.dart';
import 'package:project_ecc/widgets/charts/chart_temperature.dart';
import 'package:project_ecc/widgets/charts/chart_humidity.dart';
import 'package:project_ecc/widgets/charts/progressbar_pump.dart';

class Run extends StatefulWidget {
  const Run({Key? key}) : super(key: key);

  @override
  State<Run> createState() => _RunState();
}

class _RunState extends State<Run> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("PROJECT ECC")),
      ),
      body: SizedBox(
        height: double.infinity,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          verticalDirection: VerticalDirection.down,
          children: const <Widget>[
            Expanded(child: chart_temperature()),
            Expanded(child: chart_humidity()),
          ],
        ),
      ),
      bottomNavigationBar: const bottom_navigation(),
    );
  }
}
