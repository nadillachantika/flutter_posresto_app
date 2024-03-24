import 'package:flutter/material.dart';
import 'package:flutter_restopos/core/components/custom_date_picker.dart';
import 'package:flutter_restopos/core/components/custom_date_picker2.dart';
import 'package:flutter_restopos/core/components/custom_dropdown.dart';
import 'package:flutter_restopos/core/components/custom_text_field.dart';
import 'package:flutter_restopos/core/components/custom_time_picker.dart';
import 'package:flutter_restopos/core/components/spaces.dart';

class ReservationDataForm extends StatefulWidget {
  @override
  _ReservationFormState createState() => _ReservationFormState();
}

class _ReservationFormState extends State<ReservationDataForm> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController timeController = TextEditingController();
  final TextEditingController tableNumberController = TextEditingController();
  TextEditingController statusController = TextEditingController();
  final TextEditingController notesController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    phoneController.dispose();
    dateController.dispose();
    timeController.dispose();
    tableNumberController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    statusController = TextEditingController(text: 'pending');
    super.initState();
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

    return Column(
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
              statusController.text = newValue ?? 'pending';
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
    );
  }
}
