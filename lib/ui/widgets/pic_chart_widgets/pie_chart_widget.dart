import 'package:flutter/material.dart';
import 'package:flutter_dashboard/ui/widgets/pic_chart_widgets/pic_chart_header_widget.dart';
import 'package:flutter_dashboard/ui/widgets/pic_chart_widgets/pic_chart_main_widget.dart';

class PieChartWidget extends StatefulWidget {
  const PieChartWidget({super.key});

  @override
  State<PieChartWidget> createState() => _PieChartWidgetState();
}

class _PieChartWidgetState extends State<PieChartWidget> {
  bool _showValue = true;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            PieChartHeaderWidget(
              showValue: _showValue,
              onChanged: (value) {
                setState(() {
                  _showValue = value!;
                });
              },
            ),
            const SizedBox(height: 28),
            PieChartMainWidget(showValue: _showValue),
          ],
        ),
      ),
    );
  }
}
