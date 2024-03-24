// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ReervationModel {
  /*
    $reservation = Reservation::create([
                'customer_name' => $request->customer_name,
                'customer_phone' => $request->customer_phone,
                'reservation_date' => $request->reservation_date,
                'reservation_time' => $request->reservation_time,
                'notes' => $request->notes,
                'table_number' => $request->table_number,
                'status' => $request->status,
                'reservation_code' => $this->generateReservaitonCode()
            ]);*/

  final int? id;
  final String customerName;
  final String customerPhone;
  final String reservationDate;
  final String reservationTime;
  final String notes;
  final String tableNumber;
  final String status;
  final String? reservationCode;

  ReervationModel(
      {required this.id,
      required this.customerName,
      required this.customerPhone,
      required this.reservationDate,
      required this.reservationTime,
      required this.notes,
      required this.tableNumber,
      required this.status,
      required this.reservationCode});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'customerName': customerName,
      'customerPhone': customerPhone,
      'reservationDate': reservationDate,
      'reservationTime': reservationTime,
      'notes': notes,
      'tableNumber': tableNumber,
      'status': status,
      'reservationCode': reservationCode,
    };
  }

  factory ReervationModel.fromMap(Map<String, dynamic> map) {
    return ReervationModel(
      id: map['id'] != null ? map['id'] as int : null,
      customerName: map['customerName'] as String,
      customerPhone: map['customerPhone'] as String,
      reservationDate: map['reservationDate'] as String,
      reservationTime: map['reservationTime'] as String,
      notes: map['notes'] as String,
      tableNumber: map['tableNumber'] as String,
      status: map['status'] as String,
      reservationCode: map['reservationCode'] != null
          ? map['reservationCode'] as String
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ReervationModel.fromJson(String source) =>
      ReervationModel.fromMap(json.decode(source) as Map<String, dynamic>);

  ReervationModel copyWith({
    int? id,
    String? customerName,
    String? customerPhone,
    String? reservationDate,
    String? reservationTime,
    String? notes,
    String? tableNumber,
    String? status,
    String? reservationCode,
  }) {
    return ReervationModel(
      id: id ?? this.id,
      customerName: customerName ?? this.customerName,
      customerPhone: customerPhone ?? this.customerPhone,
      reservationDate: reservationDate ?? this.reservationDate,
      reservationTime: reservationTime ?? this.reservationTime,
      notes: notes ?? this.notes,
      tableNumber: tableNumber ?? this.tableNumber,
      status: status ?? this.status,
      reservationCode: reservationCode ?? this.reservationCode,
    );
  }

  @override
  bool operator ==(covariant ReervationModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.customerName == customerName &&
      other.customerPhone == customerPhone &&
      other.reservationDate == reservationDate &&
      other.reservationTime == reservationTime &&
      other.notes == notes &&
      other.tableNumber == tableNumber &&
      other.status == status &&
      other.reservationCode == reservationCode;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      customerName.hashCode ^
      customerPhone.hashCode ^
      reservationDate.hashCode ^
      reservationTime.hashCode ^
      notes.hashCode ^
      tableNumber.hashCode ^
      status.hashCode ^
      reservationCode.hashCode;
  }
}
