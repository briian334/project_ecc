import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

// ignore: camel_case_types
class chart_humidity extends StatefulWidget {
  const chart_humidity({Key? key}) : super(key: key);

  @override
  State<chart_humidity> createState() => _chart_humidityState();
}

// ignore: camel_case_types
class _chart_humidityState extends State<chart_humidity> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: SfRadialGauge(
          title: const GaugeTitle(
              text: "Humidity",
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
                color: Color.fromARGB(255, 255, 154, 3),
                thicknessUnit: GaugeSizeUnit.factor,
              ),
              annotations: [
                const GaugeAnnotation(
                  widget: Text("75%"),
                )
              ],
            )
          ]),
    );
  }
}
