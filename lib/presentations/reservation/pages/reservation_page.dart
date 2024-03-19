import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_restopos/core/components/custom_date_picker.dart';
import 'package:flutter_restopos/core/components/dashed_line.dart';
import 'package:flutter_restopos/core/components/spaces.dart';
import 'package:flutter_restopos/core/constants/colors.dart';
import 'package:flutter_restopos/core/extensions/date_time_ext.dart';
import 'package:flutter_restopos/gen/assets.gen.dart';
import 'package:flutter_restopos/presentations/home/widgets/custom_tab_bar.dart';
import 'package:flutter_restopos/presentations/report/widgets/report_menu.dart';
import 'package:flutter_restopos/presentations/report/widgets/report_title.dart';
import 'package:flutter_restopos/presentations/reservation/bloc/reservation/reservation_bloc.dart';
import 'package:flutter_restopos/presentations/reservation/dialogs/form_reservasi_dialog.dart';
import 'package:flutter_restopos/presentations/reservation/models/reservation_model.dart';
import 'package:flutter_restopos/presentations/reservation/models/reservation_response_model.dart';
import 'package:flutter_restopos/presentations/reservation/widgets/add_reservasi.dart';
import 'package:flutter_restopos/presentations/reservation/widgets/card_reservasi.dart';
import 'package:flutter_restopos/presentations/reservation/widgets/reservation_title.dart';
import 'package:flutter_restopos/presentations/setting/widgets/add_data.dart';

class ReservationPage extends StatefulWidget {
  const ReservationPage({super.key});

  @override
  State<ReservationPage> createState() => _ReservationPageState();
}

class _ReservationPageState extends State<ReservationPage> {
  int currentIndex = 0;

  void indexValue(int index) {
    currentIndex = index;
    setState(() {});
  }

  @override
  void initState() {
    context
        .read<ReservationBloc>()
        .add(const ReservationEvent.getReservations());
    super.initState();
  }

  void onAddDataTap() {
    showDialog(
      context: context,
      builder: (context) => const FormReservasiDialog(),
    );
  }

  void onReservationEditTap(Reservation dataReservasi) {
    showDialog(
      context: context,
      builder: (context) => FormReservasiDialog(data: dataReservasi),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // LEFT CONTENT
          Expanded(
            flex: 2,
            child: Align(
              alignment: Alignment.topCenter,
              child: ListView(
                padding: const EdgeInsets.all(16.0),
                children: [
                  const Text(
                    'Settings',
                    style: TextStyle(
                      color: AppColors.primary,
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SpaceHeight(16.0),
                  ListTile(
                    contentPadding: const EdgeInsets.all(12.0),
                    leading: Assets.icons.calendar.svg(),
                    title: const Text('Kelola Reservasi'),
                    subtitle: const Text('Tambah Data Reservasi'),
                    textColor: AppColors.primary,
                    tileColor: currentIndex == 3
                        ? AppColors.blueLight
                        : Colors.transparent,
                    onTap: () => indexValue(3),
                  ),
                ],
              ),
            ),
          ),

          // RIGHT CONTENT
          Expanded(
            flex: 4,
            child: Align(
              alignment: AlignmentDirectional.topStart,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: CustomTabBar(
                  tabTitles: const ['Hari ini'],
                  initialTabIndex: 0,
                  tabViews: [
                    SizedBox(child:
                        BlocBuilder<ReservationBloc, ReservationState>(
                            builder: (context, state) {
                      return state.maybeWhen(orElse: () {
                        print(state);
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }, loaded: (reservations) {
                        print(state);
                        return GridView.builder(
                          shrinkWrap: true,
                          itemCount: reservations.length + 1,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 0.85,
                            crossAxisCount: 3,
                            crossAxisSpacing: 30.0,
                            mainAxisSpacing: 30.0,
                          ),
                          itemBuilder: (context, index) {
                            if (index == 0) {
                              return AddReservasi(
                                  title: 'Tambah Reservasi',
                                  onPressed: onAddDataTap);
                            }
                            final item = reservations[index - 1];
                            return ManageReservationCard(
                              data: item,
                              onEditTap: () => onReservationEditTap(item),
                            );
                          },
                        );
                      });
                    })),
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
