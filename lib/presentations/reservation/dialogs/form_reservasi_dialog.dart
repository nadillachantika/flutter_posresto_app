import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_restopos/core/components/custom_date_picker.dart';
import 'package:flutter_restopos/core/components/custom_text_field.dart';
import 'package:flutter_restopos/core/extensions/build_context_ext.dart';
import 'package:flutter_restopos/presentations/reservation/models/reservation_model.dart';
import 'package:flutter_restopos/presentations/reservation/models/reservation_response_model.dart';
import 'package:flutter_restopos/presentations/setting/bloc/discount/discount_bloc.dart';
import 'package:share_plus/share_plus.dart';

import '../../../core/components/buttons.dart';
import '../../../core/components/spaces.dart';

class FormReservasiDialog extends StatefulWidget {
  final Reservation? data;
  const FormReservasiDialog({super.key, this.data});

  @override
  State<FormReservasiDialog> createState() => _FormDiscountDialogState();
}

class _FormDiscountDialogState extends State<FormReservasiDialog> {
  @override
  Widget build(BuildContext context) {
    final resCodeController =
        TextEditingController(text: widget.data?.reservationCode ?? '');
    final resDateController =
        TextEditingController(text: widget.data?.customerPhone ?? '');
    final resTimeController =
        TextEditingController(text: widget.data?.reservationTime ?? '');
    final statusController =
        TextEditingController(text: widget.data?.status ?? '');
    final notesController =
        TextEditingController(text: widget.data?.notes ?? '');
    final tableController =
        TextEditingController(text: widget.data?.tableNumber ?? '');
    final nameController =
        TextEditingController(text: widget.data?.customerName ?? '');
    final phoneController =
        TextEditingController(text: widget.data?.customerPhone ?? '');

    DateTime date = DateTime.now().add(const Duration(days: 2));

    return AlertDialog(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () => context.pop(),
            icon: const Icon(Icons.close),
          ),
          Text(widget.data == null ? 'Tambah Reservasi' : 'Edit Reservasi'),
          const Spacer(),
        ],
      ),
      content: SingleChildScrollView(
        child: SizedBox(
          width: context.deviceWidth / 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              widget.data == null
                  ? const SizedBox()
                  : Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: CustomTextField(
                        controller: resCodeController,
                        label: 'Kode Reservasi',
                        readOnly: true,
                        onChanged: (value) {},
                      ),
                    ),
              const SpaceHeight(16.0),
              CustomTextField(
                controller: nameController,
                label: 'Nama Pelanggan',
                onChanged: (value) {},
              ),
              const SpaceHeight(16.0),
              CustomTextField(
                controller: phoneController,
                label: 'No. Telp Pelanggan',
                onChanged: (value) {},
              ),
              const SpaceHeight(16.0),
              CustomDatePicker(
                prefix: const Text('Tanggal '),
                initialDate: date,
                onDateSelected: (selectedDate) {
                  date = selectedDate;
                  setState(() {
                    date = selectedDate;
                  });
                },
              ),
              const SpaceHeight(16.0),
              CustomTextField(
                controller: resTimeController,
                label: 'Waktu Reservasi',
                onChanged: (value) {},
              ),
              const SpaceHeight(16.0),
              CustomTextField(
                controller: statusController,
                label: 'Status',
                onChanged: (value) {},
              ),
              const SpaceHeight(16.0),
              CustomTextField(
                controller: notesController,
                label: 'Catatan',
                onChanged: (value) {},
              ),
              const SpaceHeight(16.0),
              Button.filled(
                onPressed: () {},
                label: widget.data == null
                    ? 'Simpan Reservasi'
                    : 'Perbarui Reservasi',
              ),
              const SpaceHeight(10.0),
              widget.data != null
                  ? Button.filled(
                      onPressed: () {
                        String message =
                            'Reservasi: ${widget.data!.customerName}\n'
                            'Tanggal: ${widget.data!.reservationDate}\n'
                            'Waktu: ${widget.data!.reservationTime}\n'
                            'Meja: ${widget.data!.tableNumber}\n'
                            'Status: ${widget.data!.status}\n'
                            'Catatan: ${widget.data!.notes}';

                        Share.share(message);
                      },
                      label: 'Bagikan Reservasi',
                    )
                  : const SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
