import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

// ignore: camel_case_types
class chart_temperature extends StatefulWidget {
  const chart_temperature({Key? key}) : super(key: key);

  @override
  State<chart_temperature> createState() => _chart_temperatureState();
}

// ignore: camel_case_types
class _chart_temperatureState extends State<chart_temperature> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: SfRadialGauge(
          title: const GaugeTitle(
              text: "Temperature",
              textStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          axes: <RadialAxis>[
            RadialAxis(
              minimum: 0,
              maximum: 60,
              showLabels: false,
              showTicks: false,
              axisLineStyle: const AxisLineStyle(
                thickness: 0.3,
                cornerStyle: CornerStyle.bothCurve,
                color: Color.fromARGB(255, 3, 226, 255),
                thicknessUnit: GaugeSizeUnit.factor,
              ),
              annotations: const [GaugeAnnotation(widget: Text("25C°"))],
            ),
          ]),
    );
  }
}
