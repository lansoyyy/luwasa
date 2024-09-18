import 'package:alert_system/utils/colors.dart';
import 'package:alert_system/widgets/text_widget.dart';
import 'package:alert_system/widgets/touchable_opacity.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData(01, 35),
      ChartData(02, 13),
      ChartData(03, 34),
      ChartData(04, 27),
      ChartData(05, 40),
      ChartData(06, 45),
      ChartData(07, 25),
      ChartData(08, 30),
      ChartData(09, 35),
      ChartData(10, 25),
      ChartData(11, 40),
      ChartData(12, 50),
    ];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                color: Colors.white,
                elevation: 3,
                child: SizedBox(
                  width: double.infinity,
                  height: 125,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextWidget(
                              text: 'Current Billing',
                              fontSize: 12,
                              color: Colors.black,
                            ),
                            TextWidget(
                              text: '₱500.00',
                              fontSize: 48,
                              color: Colors.green,
                              fontFamily: 'Bold',
                            ),
                            TextWidget(
                              text: 'September 20, 2024',
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ],
                        ),
                        TouchableOpacity(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                    color: Colors.green,
                                    shape: BoxShape.circle),
                                child: const Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Icon(
                                    Icons.payment,
                                    size: 35,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              TextWidget(
                                text: 'Pay now',
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Card(
                color: Colors.white,
                elevation: 3,
                child: SizedBox(
                  width: double.infinity,
                  height: 125,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextWidget(
                          text: 'Last Transaction',
                          fontSize: 12,
                          color: Colors.black,
                        ),
                        TextWidget(
                          text: '-₱699.00',
                          fontSize: 48,
                          color: Colors.red,
                          fontFamily: 'Bold',
                        ),
                        TextWidget(
                          text: 'August 20, 2024',
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                color: Colors.white,
                child: SfCartesianChart(
                  series: <CartesianSeries>[
                    SplineSeries<ChartData, int>(
                      dataSource: chartData,
                      xValueMapper: (ChartData data, _) =>
                          data.x, // Correct: x is a String
                      yValueMapper: (ChartData data, _) =>
                          data.y, // Ensure y is a double
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y);
  final int x;
  final double? y;
}
