import 'package:flutter/material.dart';
import 'package:flutter_dashboard/ui/widgets/pic_chart_with_title.dart';

class PieChartWidget extends StatelessWidget {
  const PieChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          children: [
            Row(
              children: [
                const Text(
                  'Pie Chart',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF464255),
                    height: 20 / 18,
                  ),
                ),
                const Flexible(
                  flex: 2,
                  child: Row(
                    children: [
                      Flexible(
                        flex: 2,
                        child: CheckboxListTile(
                          value: false,
                          onChanged: null,
                          hoverColor: Colors.transparent,
                          overlayColor: WidgetStatePropertyAll(
                            Colors.transparent,
                          ),
                        ),
                      ),
                      Text(
                        'Chart',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF464255),
                          fontWeight: FontWeight.w600,
                          height: 18 / 14,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 25),
                Flexible(
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: CheckboxListTile(
                          value: true,
                          onChanged: (_) {},
                          activeColor: const Color(0xFFFF5B5B),
                        ),
                      ),
                      const Text(
                        'Show Value',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF464255),
                          fontWeight: FontWeight.w600,
                          height: 18 / 14,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 14),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_vert,
                    color: Color(0xFFA3A3A3),
                  ),
                )
              ],
            ),
            const SizedBox(height: 28),
            const Row(
              children: [
                PieChartWithTitle(
                  value: 81,
                  title: 'Total Order',
                  color: Color(0xFFFF5B5B),
                  remainingTileColor: Color(0x26FF5B5B),
                ),
                PieChartWithTitle(
                  value: 22,
                  title: 'Customer Growth',
                  color: Color(0xFF00B074),
                  remainingTileColor: Color(0x2600B074),
                ),
                PieChartWithTitle(
                  value: 62,
                  title: 'Total Revenue',
                  color: Color(0XFF2D9CDB),
                  remainingTileColor: Color(0x262D9CDB),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
