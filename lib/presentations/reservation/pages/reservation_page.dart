
import 'package:flutter/material.dart';
import 'package:flutter_restopos/core/components/custom_date_picker.dart';
import 'package:flutter_restopos/core/components/dashed_line.dart';
import 'package:flutter_restopos/core/components/spaces.dart';
import 'package:flutter_restopos/core/constants/colors.dart';
import 'package:flutter_restopos/core/extensions/date_time_ext.dart';
import 'package:flutter_restopos/gen/assets.gen.dart';
import 'package:flutter_restopos/presentations/report/widgets/report_menu.dart';
import 'package:flutter_restopos/presentations/report/widgets/report_title.dart';
import 'package:flutter_restopos/presentations/reservation/widgets/reservation_title.dart';



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
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    
   

    return Scaffold(
      body:  Row(
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
                    subtitle: const Text('Tambah atau hapus printer'),
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
                child: IndexedStack(
                  index: currentIndex,
                  children: const [
                    Text('List Reservasi')
                 
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
