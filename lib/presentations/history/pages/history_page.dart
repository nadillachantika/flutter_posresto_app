import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_restopos/core/constants/colors.dart';
import 'package:flutter_restopos/core/extensions/date_time_ext.dart';
import 'package:flutter_restopos/presentations/report/widgets/item_sales_report.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

           Expanded(
                  flex: 2,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: ListView(
                      padding: const EdgeInsets.all(16.0),
                      children: [
                        const Text(
                          'Riwayat Transaksi',
                          style: TextStyle(
                            color: AppColors.charchoal,
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          DateTime.now().toFormattedDate(),
                          style: const TextStyle(
                            color: AppColors.charchoal,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

          const  Expanded(
            flex: 5,
            child: const Padding(
              padding: const EdgeInsets.all(16.0),
              child: const ItemSalesReport()
            ),
          )
      

        ],
      )
    );
  }
}