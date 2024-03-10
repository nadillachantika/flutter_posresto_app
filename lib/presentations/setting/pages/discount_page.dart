import 'package:flutter/material.dart';
import 'package:flutter_restopos/presentations/home/widgets/custom_tab_bar.dart';
import 'package:flutter_restopos/presentations/setting/widgets/add_data.dart';
import 'package:flutter_restopos/presentations/setting/widgets/manage_discount_card.dart';
import 'package:flutter_restopos/presentations/setting/widgets/settings_title.dart';

class DiscountPage extends StatefulWidget {
  const DiscountPage({super.key});

  @override
  State<DiscountPage> createState() => _DiscountPageState();
}

class _DiscountPageState extends State<DiscountPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SettingsTitle('Kelola Diskon'),
          const SizedBox(height: 24),
          CustomTabBar(
            tabTitles: const ['Semua'],
            initialTabIndex: 0,
            tabViews: [
              // SEMUA TAB
                ],
          ),
        ],
      ),
    );
  }
}
