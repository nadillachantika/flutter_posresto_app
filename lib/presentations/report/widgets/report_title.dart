import 'package:flutter/material.dart';
import 'package:flutter_restopos/core/components/spaces.dart';
import 'package:flutter_restopos/core/constants/colors.dart';
import 'package:flutter_restopos/core/extensions/date_time_ext.dart';


class ReportTitle extends StatelessWidget {
  const ReportTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Report',
          style: TextStyle(
            color: AppColors.charchoal,
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SpaceHeight(4.0),
        Text(
          DateTime.now().toFormattedDate(),
          style: const TextStyle(
            color: AppColors.charchoal,
            fontSize: 16,
          ),
        ),
        const SpaceHeight(10.0),
        const Divider(),
      ],
    );
  }
}
