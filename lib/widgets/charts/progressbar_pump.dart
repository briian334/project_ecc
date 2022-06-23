import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class progressbar_pump extends StatefulWidget {
  const progressbar_pump({Key? key}) : super(key: key);

  @override
  State<progressbar_pump> createState() => _progressbar_pumpState();
}

class _progressbar_pumpState extends State<progressbar_pump> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SfLinearGauge(
        barPointers: [LinearBarPointer(value: 60)],
        axisTrackStyle: LinearAxisTrackStyle(
            thickness: 15, edgeStyle: LinearEdgeStyle.bothCurve),
      ),
    );
  }
}
