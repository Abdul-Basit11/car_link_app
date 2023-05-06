import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../../../congiguration/app_colors.dart';


class Earnings extends StatefulWidget {
  const Earnings({Key? key}) : super(key: key);

  @override
  State<Earnings> createState() => _EarningsState();
}

class _EarningsState extends State<Earnings> {
  //
  // List<Color> gradientColors = [
  //   AppColors.kPrimaryColor,
  //   AppColors.kBlackColor,
  // ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '\$0 Earned in 2023',
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(backgroundColor: Colors.red.shade100, fontSize: 20),
          ),
          Text(
            'Lorem ipsum dolor sit amet, consec',
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                fontFamily: 'Bahnschrift', fontWeight: FontWeight.w500),
          ),
          Center(
            child: Container(
              height: 200,
              child: LineChart(
                mainData(),
              ),
            ),
          ),


          SizedBox(height: 30,),
          earningTile(Colors.green),
          earningTile(Colors.red),
          earningTile(Colors.purple),
          earningTile(Colors.blueAccent),
        ],
      ),
    );
  }

  Widget earningTile(Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        children: [
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(6)),
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            '\$0 tripearnig',
            style: Theme.of(context).textTheme.labelLarge,
          ),
          const SizedBox(
            width: 8,
          ),
          const Icon(
            Icons.help_outline,
            size: 18,
          )
        ],
      ),
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 12,
    );
    Widget text;
    switch (value.toInt()) {
      case 1:
        text = const Text('JAN', style: style);
        break;
      case 2:
        text = const Text('FEB', style: style);
        break;
      case 3:
        text = const Text('MAR', style: style);
        break;
      default:
        text = const Text('', style: style);
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: text,
    );
  }

  Widget rightTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 12,
        fontFamily: 'Myriad Pro',
        color: Colors.grey
    );
    String text;
    switch (value.toInt()) {
      case 0:
        text = '\$0K';
        break;
      case 1:
        text = '\$1k';
        break;
      case 2:
        text = '\$2k';
        break;
      case 3:
        text = '\$3k';
        break;
      default:
        return Container();
    }

    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Text(text, style: style, textAlign: TextAlign.left),
    );
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: false,
        horizontalInterval: 0.8,
        verticalInterval: 1,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: Colors.grey,
            strokeWidth: 0.5,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 1,
            getTitlesWidget: rightTitleWidgets,
            reservedSize: 42,
          ),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 20,
            interval: 1,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      minX: 0,
      maxX: 4,
      minY: 0,
      maxY: 4,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(1, 1),
            FlSpot(2, 2),
            FlSpot(2, 1),
            FlSpot(3, 3),
          ],
          isCurved: true,
          color: Colors.transparent,
          // gradient: LinearGradient(
          //   colors: gradientColors,
          // ),
          barWidth: 1,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),

        ),
      ],
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final DateTime year;
  final double sales;
}
