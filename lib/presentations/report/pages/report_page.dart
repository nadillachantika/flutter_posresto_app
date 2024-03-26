import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_restopos/core/components/custom_date_picker.dart';
import 'package:flutter_restopos/core/components/dashed_line.dart';
import 'package:flutter_restopos/core/components/spaces.dart';
import 'package:flutter_restopos/core/constants/colors.dart';
import 'package:flutter_restopos/core/extensions/date_time_ext.dart';
import 'package:flutter_restopos/presentations/report/bloc/item_sales_report/item_sales_report_bloc.dart';
import 'package:flutter_restopos/presentations/report/bloc/report/transaction_report_bloc.dart';
import 'package:flutter_restopos/presentations/report/widgets/item_sales_report.dart';
import 'package:sqflite/sqflite.dart';
import '../widgets/report_menu.dart';
import '../widgets/report_title.dart';

class ReportPage extends StatefulWidget {
  const ReportPage({super.key});

  @override
  State<ReportPage> createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  int selectedMenu = 0;
  String title = 'Summary Sales Report';
  DateTime fromDate = DateTime.now().subtract(const Duration(days: 30));
  DateTime toDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    String searchDateFormatted =
        '${fromDate.toFormattedDate2()} to ${toDate.toFormattedDate2()}';
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Row(
        children: [
          // LEFT CONTENT
          Expanded(
            flex: 3,
            child: Align(
              alignment: Alignment.topLeft,
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ReportTitle(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: CustomDatePicker(
                              prefix: const Text('From: '),
                              initialDate: fromDate,
                              onDateSelected: (selectedDate) {
                                // fromDate = selectedDate;
                                setState(() {
                                  fromDate = selectedDate;
                                });

                                 context.read<TransactionReportBloc>().add(
                                    TransactionReportEvent.getReport(
                                        startDate: selectedDate, endDate: toDate));
                              },
                            ),
                          ),
                          const SpaceWidth(20.0),
                          Flexible(
                            child: CustomDatePicker(
                              prefix: const Text('To: '),
                              initialDate: toDate,
                              onDateSelected: (selectedDate) {
                                // toDate = selectedDate;
                                setState(() {
                                  toDate = selectedDate;
                                });
                                 context.read<TransactionReportBloc>().add(
                                    TransactionReportEvent.getReport(
                                        startDate: fromDate, endDate: selectedDate));
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Wrap(
                          children: [
                            ReportMenu(
                              label: 'Transaction Report',
                              onPressed: () {
                                selectedMenu = 1;
                                title = 'Transaction Report';

                                context.read<TransactionReportBloc>().add(
                                    TransactionReportEvent.getReport(
                                        startDate: fromDate, endDate: toDate));

                                setState(() {});

                                // enddate 1 month before start date
                              },
                              isActive: selectedMenu == 1,
                            ),
                            ReportMenu(
                              label: 'Item Sales Report',
                              onPressed: () {
                                selectedMenu = 4;
                                title = 'Item Sales Report';
                                fromDate = DateTime.now()
                                    .subtract(const Duration(days: 30));
                                toDate = DateTime.now();

                                context.read<ItemSalesReportBloc>().add(
                                    ItemSalesReportEvent.getItemSalesReport(
                                        startDate: fromDate, endDate: toDate));

                                setState(() {});

                                // enddate 1 month before start date
                              },
                              isActive: selectedMenu == 4,
                            ),
                            ReportMenu(
                              label: 'Daily Sales Report',
                              onPressed: () {
                                selectedMenu = 5;
                                title = 'Daily Sales Report';
                                DateTime now = DateTime.now();
                                String todayFormatted =
                                    'Today, ${now.toFormattedDate2()}';

                                fromDate = now;
                                toDate = now;

                                setState(() {
                                  searchDateFormatted = todayFormatted;
                                  context.read<TransactionReportBloc>().add(
                                      TransactionReportEvent.getReport(
                                          startDate: DateTime(
                                              now.year, now.month, now.day),
                                          endDate: now));
                                });
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
                    ),
                  ],
                ),
              ),
            ),
          ),

          // RIGHT CONTENT
          Expanded(
            flex: 2,
            child: selectedMenu == 1 || selectedMenu == 5
                ? Align(
                    alignment: Alignment.topCenter,
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.all(24.0),
                      child: BlocBuilder<TransactionReportBloc,
                          TransactionReportState>(
                        builder: (context, state) {
                          final totalRevenue = state.maybeMap(
                            orElse: () => 0.0,
                            loading: (_) => 0.0,
                            loaded: (value) {
                              return value.transactionReport.fold(
                                  0,
                                  (previousValue, element) =>
                                      previousValue + element.total);
                            },
                          );

                          final subTotal = state.maybeMap(
                            orElse: () => 0.0,
                            loading: (_) => 0.0,
                            loaded: (value) {
                              return value.transactionReport.fold(
                                  0,
                                  (previousValue, element) =>
                                      previousValue + element.subTotal);
                            },
                          );

                          final discount = state.maybeMap(
                            orElse: () => 0.0,
                            loading: (_) => 0.0,
                            loaded: (value) {
                              return value.transactionReport.fold(
                                  0,
                                  (previousValue, element) =>
                                      previousValue + element.discount);
                            },
                          );

                          final tax = state.maybeMap(
                            orElse: () => 0.0,
                            loading: (_) => 0.0,
                            loaded: (value) {
                              return value.transactionReport.fold(
                                  0,
                                  (previousValue, element) =>
                                      previousValue + element.tax);
                            },
                          );

                          return state.maybeWhen(orElse: () {
                            return const Center(
                              child: Text('No Data'),
                            );
                          }, loading: () {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }, loaded: (transactionReport) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Text(
                                    title,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16.0),
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
                                  Text('REVENUE : $totalRevenue'),
                                  const SpaceHeight(8.0),
                                  const DashedLine(),
                                  const DashedLine(),
                                  const SpaceHeight(8.0),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text('Subtotal'),
                                      Text('$subTotal'),
                                    ],
                                  ),
                                  const SpaceHeight(4.0),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text('Discount'),
                                      Text('$discount'),
                                    ],
                                  ),
                                  const SpaceHeight(4.0),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text('Tax'),
                                      Text('$tax'),
                                    ],
                                  ),
                                  const SpaceHeight(8.0),
                                  const DashedLine(),
                                  const DashedLine(),
                                  const SpaceHeight(8.0),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text('TOTAL'),
                                      Text('$totalRevenue'),
                                    ],
                                  ),
                                ],
                                const SpaceHeight(32.0),
                              ],
                            );
                          });
                        },
                      ),
                    ),
                  )
                : selectedMenu == 4
                    ? BlocBuilder<ItemSalesReportBloc, ItemSalesReportState>(
                        builder: (context, state) {
                          return state.maybeWhen(
                            orElse: () {
                              return const Center(
                                  child: CircularProgressIndicator());
                            },
                            loaded: (itemReports) {
                              return SingleChildScrollView(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                     Center(
                                    child: Text(
                                      title,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16.0),
                                    ),
                                  ),
                                  Center(
                                    child: Text(
                                      searchDateFormatted,
                                      style: const TextStyle(fontSize: 16.0),
                                    ),
                                  ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 16.0),
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: DataTable(
                                          dividerThickness: 0.1,
                                          dataRowColor: MaterialStateColor
                                              .resolveWith((states) => Colors
                                                  .white), // Warna latar belakang baris data
                                          headingRowColor:
                                              MaterialStateColor.resolveWith(
                                                  (states) => AppColors.primary
                                                      .withOpacity(0.1)),
                                          headingTextStyle: const TextStyle(
                                              color: AppColors.primary,
                                              fontWeight: FontWeight.bold),
                                    
                                          columns: const [
                                            DataColumn(label: Text('Product.')),
                                            DataColumn(label: Text('Total Item')),
                                          ],
                                          rows: itemReports.map((itemReport) {
                                            return DataRow(
                                              cells: [
                                                DataCell(
                                                  Text(itemReport.productName
                                                      .toString()),
                                                ),
                                                DataCell(
                                                  Text(
                                                    itemReport.quantity.toString(),
                                                    style: const TextStyle(
                                                        color: AppColors.primary),
                                                  ),
                                                ),
                                              ],
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                      )
                    : SizedBox(),
          ),
        ],
      ),
    );
  }
}
