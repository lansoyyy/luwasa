import 'package:alert_system/utils/colors.dart';
import 'package:alert_system/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class TransactionTab extends StatelessWidget {
  const TransactionTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextWidget(
                text: 'Transaction History',
                fontSize: 22,
                fontFamily: 'Bold',
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 75,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: secondary,
                ),
                child: Center(
                  child: TextWidget(
                    text: 'Today',
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              for (int i = 0; i < 2; i++)
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Card(
                    elevation: 3,
                    child: ListTile(
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextWidget(
                            text: 'Payment to LUWASA Inc.',
                            fontSize: 18,
                          ),
                          TextWidget(
                            text: 'September 20, 2024 | 8:30AM',
                            fontSize: 12,
                          ),
                        ],
                      ),
                      trailing: TextWidget(
                        text: '-₱699.00',
                        fontSize: 12,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 75,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: secondary,
                ),
                child: Center(
                  child: TextWidget(
                    text: 'Past',
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              for (int i = 0; i < 3; i++)
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Card(
                    elevation: 3,
                    child: ListTile(
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextWidget(
                            text: 'Payment to LUWASA Inc.',
                            fontSize: 18,
                          ),
                          TextWidget(
                            text: 'June 20, 2024 | 8:30AM',
                            fontSize: 12,
                          ),
                        ],
                      ),
                      trailing: TextWidget(
                        text: '-₱699.00',
                        fontSize: 12,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
