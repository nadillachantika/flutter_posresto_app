
import 'package:flutter/material.dart';
import 'package:flutter_restopos/core/components/custom_date_picker.dart';
import 'package:flutter_restopos/core/components/dashed_line.dart';
import 'package:flutter_restopos/core/components/spaces.dart';
import 'package:flutter_restopos/core/extensions/date_time_ext.dart';
import 'package:flutter_restopos/presentations/report/widgets/report_menu.dart';
import 'package:flutter_restopos/presentations/report/widgets/report_title.dart';
import 'package:flutter_restopos/presentations/reservation/widgets/reservation_title.dart';



class ReservationPage extends StatefulWidget {
  const ReservationPage({super.key});

  @override
  State<ReservationPage> createState() => _ReservationPageState();
}

class _ReservationPageState extends State<ReservationPage> {
  int selectedMenu = 0;
  String title = 'Summary Sales Report';
  DateTime fromDate = DateTime.now().subtract(const Duration(days: 30));
  DateTime toDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    
    String searchDateFormatted =
        '${fromDate.toFormattedDate2()} to ${toDate.toFormattedDate2()}';

    return Scaffold(
      body: Row(
        children: [
          // LEFT CONTENT
          Expanded(
            flex: 3,
            child: Align(
              alignment: Alignment.topLeft,
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ReservationTitle(),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: CustomDatePicker(
                              prefix: const Text('From: '),
                              initialDate: fromDate,
                              onDateSelected: (selectedDate) {
                                fromDate = selectedDate;
                                setState(() {});
                              },
                            ),
                          ),
                          const SpaceWidth(100.0),
                          Flexible(
                            child: CustomDatePicker(
                              prefix: const Text('To: '),
                              initialDate: toDate,
                              onDateSelected: (selectedDate) {
                                toDate = selectedDate;
                                setState(() {});
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Wrap(
                        children: [
                          ReportMenu(
                            label: 'Transaction Report',
                            onPressed: () {
                              selectedMenu = 1;
                              title = 'Transaction Report';
                              setState(() {});
                            },
                            isActive: selectedMenu == 1,
                          ),
                          ReportMenu(
                            label: 'Item Sales Report',
                            onPressed: () {
                              selectedMenu = 4;
                              title = 'Item Sales Report';
                              setState(() {});
                            },
                            isActive: selectedMenu == 4,
                          ),
                          ReportMenu(
                            label: 'Daily Sales Report',
                            onPressed: () {
                              selectedMenu = 5;
                              title = 'Daily Sales Report';
                              setState(() {});
                            },
                            isActive: selectedMenu == 5,
                          ),
                          ReportMenu(
                            label: 'Summary Sales Report',
                            onPressed: () {
                              selectedMenu = 0;
                              title = 'Summary Sales Report';
                              setState(() {});
                            },
                            isActive: selectedMenu == 0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // RIGHT CONTENT
          Expanded(
            flex: 2,
            child: Align(
              alignment: Alignment.topCenter,
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        title,
                        style: const TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16.0),
                      ),
                    ),
                    Center(
                      child: Text(
                        searchDateFormatted,
                        style: const TextStyle(fontSize: 16.0),
                      ),
                    ),
                    const SpaceHeight(16.0),

                    // REVENUE INFO
                    ...[
                      const Text('REVENUE'),
                      const SpaceHeight(8.0),
                      const DashedLine(),
                      const DashedLine(),
                      const SpaceHeight(8.0),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Subtotal'),
                          Text('0'),
                        ],
                      ),
                      const SpaceHeight(4.0),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Discount'),
                          Text('0'),
                        ],
                      ),
                      const SpaceHeight(4.0),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Tax'),
                          Text('0'),
                        ],
                      ),
                      const SpaceHeight(8.0),
                      const DashedLine(),
                      const DashedLine(),
                      const SpaceHeight(8.0),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('TOTAL'),
                          Text('0'),
                        ],
                      ),
                    ],
                    const SpaceHeight(32.0),

                    // PAYMENT INFO
                    ...[
                      const Text('PAYMENT'),
                      const SpaceHeight(8.0),
                      const DashedLine(),
                      const DashedLine(),
                      const SpaceHeight(8.0),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Cash'),
                          Text('0'),
                        ],
                      ),
                      const SpaceHeight(8.0),
                      const DashedLine(),
                      const DashedLine(),
                      const SpaceHeight(8.0),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('TOTAL'),
                          Text('0'),
                        ],
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
