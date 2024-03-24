import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_restopos/core/components/buttons.dart';
import 'package:flutter_restopos/core/components/custom_date_picker.dart';
import 'package:flutter_restopos/core/components/custom_dropdown.dart';
import 'package:flutter_restopos/core/components/custom_text_field.dart';
import 'package:flutter_restopos/core/components/custom_time_picker.dart';
import 'package:flutter_restopos/core/components/spaces.dart';
import 'package:flutter_restopos/core/constants/colors.dart';
import 'package:flutter_restopos/core/extensions/build_context_ext.dart';
import 'package:flutter_restopos/core/extensions/int_ext.dart';
import 'package:flutter_restopos/core/extensions/string_ext.dart';
import 'package:flutter_restopos/gen/assets.gen.dart';
import 'package:flutter_restopos/presentations/home/bloc/checkout/checkout_bloc.dart';
import 'package:flutter_restopos/presentations/home/bloc/local_product/local_product_bloc.dart';
import 'package:flutter_restopos/presentations/home/bloc/reservation_data/reservation_data_bloc.dart';
import 'package:flutter_restopos/presentations/home/dialog/discount_dialog.dart';
import 'package:flutter_restopos/presentations/home/dialog/service_dialog.dart';
import 'package:flutter_restopos/presentations/home/dialog/tax_dialog.dart';
import 'package:flutter_restopos/presentations/home/models/product_category.dart';
import 'package:flutter_restopos/presentations/home/models/product_model.dart';
import 'package:flutter_restopos/presentations/home/pages/confirm_payment_page.dart';
import 'package:flutter_restopos/presentations/home/pages/reservation_data_page.dart';
import 'package:flutter_restopos/presentations/home/widgets/column_button.dart';
import 'package:flutter_restopos/presentations/home/widgets/custom_tab_bar.dart';
import 'package:flutter_restopos/presentations/home/widgets/home_title.dart';
import 'package:flutter_restopos/presentations/home/widgets/order_menu.dart';
import 'package:flutter_restopos/presentations/home/widgets/product_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final searchController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController timeController = TextEditingController();
  final TextEditingController tableNumberController = TextEditingController();
  TextEditingController statusController = TextEditingController();
  final TextEditingController notesController = TextEditingController();

  bool isDineInSelected = false;
  bool isBookingSelected = false;

  @override
  void initState() {
    // searchResults = products;
    context
        .read<LocalProductBloc>()
        .add(const LocalProductEvent.getLocalProduct());
            statusController = TextEditingController(text: 'pending');


    super.initState();
  }

  void onCategoryTap(int index) {
    searchController.clear();
    // if (index == 0) {
    //   searchResults = products;
    // } else {
    //   searchResults = products
    //       .where((e) => e.category.index.toString().contains(index.toString()))
    //       .toList();
    // }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    DateTime date = DateTime.now().add(const Duration(days: 2));
    TimeOfDay time = TimeOfDay.now();

    TimeOfDay stringToTimeOfDay(String? timeString) {
      List<String> parts = timeString!.split(':');
      int hour = int.parse(parts[0]);
      int minute = int.parse(parts[1]);
      return TimeOfDay(hour: hour, minute: minute);
    }

    return Hero(
      tag: 'confirmation_screen',
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: Row(
          children: [
            Expanded(
              flex: 3,
              child: Align(
                alignment: AlignmentDirectional.topStart,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        HomeTitle(
                          controller: searchController,
                          onChanged: (value) {
                            // searchResults = products
                            //     .where((e) => e.name
                            //         .toLowerCase()
                            //         .contains(value.toLowerCase()))
                            //     .toList();
                            // setState(() {});
                          },
                        ),
                        CustomTabBar(
                          tabTitles: ['Semua', 'Makanan', 'Minuman', 'Dessert'],
                          initialTabIndex: 0,
                          tabViews: [
                            SizedBox(
                              child: BlocBuilder<LocalProductBloc,
                                  LocalProductState>(
                                builder: (context, state) {
                                  print('Current State: $state');
                                  return state.maybeWhen(orElse: () {
                                    print('State: orElse');

                                    return const Center(
                                      child: CircularProgressIndicator(),
                                    );
                                  }, loading: () {
                                    print('State: Loading');

                                    return const Center(
                                      child: CircularProgressIndicator(
                                        color: AppColors.primary,
                                      ),
                                    );
                                  }, loaded: (products) {
                                    print('State: loaded');

                                    if (products.isEmpty) {
                                      return const Center(
                                        child: Text('No Items'),
                                      );
                                    }
                                    return GridView.builder(
                                      shrinkWrap: true,
                                      itemCount: products.length,
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      gridDelegate:
                                          const SliverGridDelegateWithFixedCrossAxisCount(
                                        childAspectRatio: 0.85,
                                        crossAxisCount: 3,
                                        crossAxisSpacing: 30.0,
                                        mainAxisSpacing: 30.0,
                                      ),
                                      itemBuilder: (context, index) =>
                                          ProductCard(
                                        data: products[index],
                                        onCartButton: () {},
                                      ),
                                    );
                                  });
                                },
                              ),
                            ),
                            SizedBox(
                              child: BlocBuilder<LocalProductBloc,
                                  LocalProductState>(
                                builder: (context, state) {
                                  return state.maybeWhen(orElse: () {
                                    return const Center(
                                      child: CircularProgressIndicator(),
                                    );
                                  }, loading: () {
                                    return const Center(
                                      child: CircularProgressIndicator(),
                                    );
                                  }, loaded: (products) {
                                    if (products.isEmpty) {
                                      return const Center(
                                        child: Text('No Items'),
                                      );
                                    }

                                    return GridView.builder(
                                      shrinkWrap: true,
                                      itemCount: products
                                          .where((element) =>
                                              element.category!.id! == 1)
                                          .toList()
                                          .length,
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      gridDelegate:
                                          const SliverGridDelegateWithFixedCrossAxisCount(
                                        childAspectRatio: 0.85,
                                        crossAxisCount: 3,
                                        crossAxisSpacing: 30.0,
                                        mainAxisSpacing: 30.0,
                                      ),
                                      itemBuilder: (context, index) =>
                                          ProductCard(
                                        data: products
                                            .where((element) =>
                                                element.category!.id! == 1)
                                            .toList()[index],
                                        onCartButton: () {},
                                      ),
                                    );
                                  });
                                },
                              ),
                            ),
                            SizedBox(
                              child: BlocBuilder<LocalProductBloc,
                                  LocalProductState>(
                                builder: (context, state) {
                                  return state.maybeWhen(orElse: () {
                                    return const Center(
                                      child: CircularProgressIndicator(),
                                    );
                                  }, loading: () {
                                    return const Center(
                                      child: CircularProgressIndicator(),
                                    );
                                  }, loaded: (products) {
                                    if (products.isEmpty) {
                                      return const Center(
                                        child: Text('No Items'),
                                      );
                                    }

                                    return GridView.builder(
                                      shrinkWrap: true,
                                      itemCount: products
                                          .where((element) =>
                                              element.category!.id! == 2)
                                          .toList()
                                          .length,
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      gridDelegate:
                                          const SliverGridDelegateWithFixedCrossAxisCount(
                                        childAspectRatio: 0.85,
                                        crossAxisCount: 3,
                                        crossAxisSpacing: 30.0,
                                        mainAxisSpacing: 30.0,
                                      ),
                                      itemBuilder: (context, index) =>
                                          ProductCard(
                                        data: products
                                            .where((element) =>
                                                element.category!.id! == 2)
                                            .toList()[index],
                                        onCartButton: () {},
                                      ),
                                    );
                                  });
                                },
                              ),
                            ),
                            SizedBox(
                              child: BlocBuilder<LocalProductBloc,
                                  LocalProductState>(
                                builder: (context, state) {
                                  return state.maybeWhen(orElse: () {
                                    return const Center(
                                      child: CircularProgressIndicator(),
                                    );
                                  }, loading: () {
                                    return const Center(
                                      child: CircularProgressIndicator(),
                                    );
                                  }, loaded: (products) {
                                    if (products.isEmpty) {
                                      return const Center(
                                        child: Text('No Items'),
                                      );
                                    }

                                    return GridView.builder(
                                      shrinkWrap: true,
                                      itemCount: products
                                          .where((element) =>
                                              element.category!.id! == 3)
                                          .toList()
                                          .length,
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      gridDelegate:
                                          const SliverGridDelegateWithFixedCrossAxisCount(
                                        childAspectRatio: 0.85,
                                        crossAxisCount: 3,
                                        crossAxisSpacing: 30.0,
                                        mainAxisSpacing: 30.0,
                                      ),
                                      itemBuilder: (context, index) =>
                                          ProductCard(
                                        data: products
                                            .where((element) =>
                                                element.category!.id! == 3)
                                            .toList()[index],
                                        onCartButton: () {},
                                      ),
                                    );
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Align(
                alignment: Alignment.topCenter,
                child: Stack(
                  children: [
                    SingleChildScrollView(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Orders #1',
                            style: TextStyle(
                              color: AppColors.charchoal,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SpaceHeight(8.0),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: isDineInSelected
                                        ? AppColors.primary
                                        : null,
                                    borderRadius: BorderRadius.circular(16.0),
                                    border: Border.all(
                                      color: isDineInSelected
                                          ? Colors.transparent
                                          : Colors.grey,
                                    ),
                                  ),
                                  child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        isDineInSelected = !isDineInSelected;
                                        if (isDineInSelected) {
                                          isBookingSelected = false;
                                        }
                                      });
                                    },
                                    child: Text(
                                      'Dine In',
                                      style: TextStyle(
                                          color: isDineInSelected
                                              ? Colors.white
                                              : Colors.grey),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8.0),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: isBookingSelected
                                        ? AppColors.primary
                                        : null,
                                    borderRadius: BorderRadius.circular(16.0),
                                    border: Border.all(
                                      color: isBookingSelected
                                          ? Colors.transparent
                                          : Colors.grey,
                                    ),
                                  ),
                                  child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        isBookingSelected = !isBookingSelected;
                                        if (isBookingSelected) {
                                          isDineInSelected = false;
                                        }
                                      });
                                    },
                                    child: Text(
                                      'Booking',
                                      style: TextStyle(
                                          color: isBookingSelected
                                              ? Colors.white
                                              : Colors.grey),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          isBookingSelected == true
                              ? Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomTextField(
                                      controller: nameController,
                                      label: 'Customer Name',
                                    ),
                                    CustomTextField(
                                      controller: phoneController,
                                      label: 'Customer Phone',
                                    ),
                                    const SpaceHeight(8.0),

                                    const Text(
                                      'Tanggal',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    const SpaceHeight(8.0),

                                    CustomDatePicker(
                                        initialDate: date,
                                        onDateSelected: (selectedDate) {
                                          setState(() {
                                            date = selectedDate;
                                          });
                                        }),
                                    const SpaceHeight(8.0),

                                    const Text(
                                      'Jam',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),

                                    const SpaceHeight(8.0),

                                    CustomTimePicker(
                                      prefix: const Text('Jam '),
                                      initialTime: time,
                                      onTimeSelected: (selectedTime) {
                                        time = selectedTime;
                                        setState(() {
                                          time = selectedTime;
                                        });
                                      },
                                    ),
                                    CustomDropdown(
                                      value: statusController.text,
                                      items: const [
                                        'pending',
                                        'confirmed',
                                        'cancelled',
                                        'seated',
                                        'completed'
                                      ],
                                      label: 'Status',
                                      onChanged: (newValue) {
                                        setState(() {
                                          statusController.text =
                                              newValue ?? 'pending';
                                        });
                                      },
                                    ),
                                    CustomTextField(
                                      controller: tableNumberController,
                                      label: 'Table Number',
                                    ),
                                    CustomTextField(
                                      controller: notesController,
                                      label: 'Catatan',
                                      onChanged: (value) {},
                                    ),
                                    // Tombol untuk submit reservasi
                                    // ElevatedButton(
                                    //   onPressed: () {
                                    //     // Mengirimkan data reservasi ke Bloc untuk diproses
                                    //     BlocProvider.of<ReservationDataBloc>(context).add(
                                    //       ReservationDataEvent.addOrUpdateReservation(
                                    //         Reservation(
                                    //           customerName: nameController.text,
                                    //           customerPhone: phoneController.text,
                                    //           reservationDate: dateController.text,
                                    //           reservationTime: timeController.text,
                                    //           tableNumber: tableNumberController.text,
                                    //           // Tambahkan data reservasi lainnya sesuai kebutuhan
                                    //         ),
                                    //       ),
                                    //     );
                                    //   },
                                    //   child: Text('Submit Reservation'),
                                    // ),
                                  ],
                                )
                              : SizedBox(),
                          const SpaceHeight(16.0),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Item',
                                style: TextStyle(
                                  color: AppColors.charchoal,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                width: 130,
                              ),
                              SizedBox(
                                width: 50.0,
                                child: Text(
                                  'Qty',
                                  style: TextStyle(
                                    color: AppColors.charchoal,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(
                                child: Text(
                                  'Price',
                                  style: TextStyle(
                                    color: AppColors.charchoal,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SpaceHeight(8),
                          const Divider(),
                          const SpaceHeight(8),
                          BlocBuilder<CheckoutBloc, CheckoutState>(
                            builder: (context, state) {
                              return state.maybeWhen(
                                orElse: () => const Center(
                                  child: Text('No Items'),
                                ),
                                loaded:
                                    (products, discount, tax, serviceCharge) {
                                  if (products.isEmpty) {
                                    return const Center(
                                      child: Text('No Items'),
                                    );
                                  }
                                  return ListView.separated(
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemBuilder: (context, index) =>
                                        Dismissible(
                                            key: UniqueKey(),
                                            direction: DismissDirection
                                                .endToStart, // Geser ke kanan untuk menghapus
                                            onDismissed: (direction) {
                                              // Aksi yang dilakukan saat item digeser
                                              // context.read<CheckoutBloc>().add(
                                              //     CheckoutEvent.removeItem(
                                              //         products[index]));
                                            },
                                            background: Container(
                                              alignment: Alignment.centerRight,
                                              color: Colors
                                                  .red, // Warna latar belakang saat digeser
                                              child: const Icon(Icons.delete,
                                                  color: Colors.white),
                                            ),
                                            child: OrderMenu(
                                                data: products[index])),
                                    separatorBuilder: (context, index) =>
                                        const SpaceHeight(1.0),
                                    itemCount: products.length,
                                  );
                                },
                              );
                            },
                          ),
                          const SpaceHeight(8.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ColumnButton(
                                label: 'Diskon',
                                svgGenImage: Assets.icons.diskon,
                                onPressed: () {
                                  showDialog(
                                      barrierDismissible: false,
                                      context: context,
                                      builder: (context) =>
                                          const DiscountDialog());
                                },
                              ),
                              ColumnButton(
                                label: 'Pajak',
                                svgGenImage: Assets.icons.pajak,
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) => const TaxDialog());
                                },
                              ),
                              ColumnButton(
                                label: 'Layanan',
                                svgGenImage: Assets.icons.layanan,
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) =>
                                          const ServiceDialog());
                                },
                              ),
                            ],
                          ),
                          const SpaceHeight(8.0),
                          const Divider(),
                          const SpaceHeight(8.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Pajak',
                                style: TextStyle(color: AppColors.grey),
                              ),
                              BlocBuilder<CheckoutBloc, CheckoutState>(
                                builder: (context, state) {
                                  final tax = state.maybeWhen(
                                      orElse: () => 0,
                                      loaded: (products, discount, tax,
                                          serviceCharge) {
                                        if (products.isEmpty) {
                                          return 0;
                                        }
                                        return tax;
                                      });

                                  return Text(
                                    '$tax %',
                                    style: const TextStyle(
                                      color: AppColors.charchoal,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                          const SpaceHeight(8.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Diskon',
                                style: TextStyle(color: AppColors.grey),
                              ),
                              BlocBuilder<CheckoutBloc, CheckoutState>(
                                builder: (context, state) {
                                  final discount = state.maybeWhen(
                                      orElse: () => 0,
                                      loaded: (products, discount, tax,
                                          serviceCharge) {
                                        if (discount == null) {
                                          return 0;
                                        }
                                        return discount.value!
                                            .replaceAll('.00', '')
                                            .toIntegerFromText;
                                      });
                                  return Text(
                                    '$discount %',
                                    style: const TextStyle(
                                      color: AppColors.charchoal,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                          const SpaceHeight(8.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Sub total',
                                style: TextStyle(color: AppColors.grey),
                              ),
                              BlocBuilder<CheckoutBloc, CheckoutState>(
                                builder: (context, state) {
                                  final price = state.maybeWhen(
                                    orElse: () => 0,
                                    loaded: (products, discount, tax,
                                        serviceCharge) {
                                      if (products.isNotEmpty) {
                                        return products
                                            .map((e) =>
                                                e.product.price! * e.quantity)
                                            .reduce((value, element) =>
                                                value + element);
                                      } else {
                                        return 0;
                                      }
                                    },
                                  );

                                  return Text(price!.currencyFormatRp,
                                      style: const TextStyle(
                                        color: AppColors.charchoal,
                                        fontWeight: FontWeight.w600,
                                      ));
                                },
                              )
                            ],
                          ),
                          const SpaceHeight(100.0),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: ColoredBox(
                        color: Colors.transparent,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24.0, vertical: 16.0),
                          child: Button.filled(
                            onPressed: () {
                              // context.read<ReservationDataBloc>().add(ReservationDataEvent.addOrUpdateReservation(reservation))
                              
                              context.push(const ConfirmPaymentPage());
                              
                            },
                            label: 'Lanjutkan Pembayaran',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _IsEmpty extends StatelessWidget {
  const _IsEmpty();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.icons.noProduct.svg(),
          const SizedBox(height: 80.0),
          const Text(
            'Belum Ada Produk',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24),
          ),
        ],
      ),
    );
  }
}
