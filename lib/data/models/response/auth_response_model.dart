import 'dart:convert';

class AuthResponseModel {
    final int? status;
    final String? token;
    final String? message;
    final Data? data;

    AuthResponseModel({
        this.status,
        this.token,
        this.message,
        this.data,
    });

    factory AuthResponseModel.fromJson(String str) => AuthResponseModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory AuthResponseModel.fromMap(Map<String, dynamic> json) => AuthResponseModel(
        status: json["status"],
        token: json["token"],
        message: json["message"],
        data: json["data"] == null ? null : Data.fromMap(json["data"]),
    );

    Map<String, dynamic> toMap() => {
        "status": status,
        "token": token,
        "message": message,
        "data": data?.toMap(),
    };
}

class Data {
    final int? id;
    final String? name;
    final String? email;
    final dynamic phone;
    final dynamic emailVerifiedAt;
    final dynamic twoFactorSecret;
    final dynamic twoFactorRecoveryCodes;
    final dynamic twoFactorConfirmedAt;
    final dynamic createdAt;
    final dynamic updatedAt;
    final String? role;

    Data({
        this.id,
        this.name,
        this.email,
        this.phone,
        this.emailVerifiedAt,
        this.twoFactorSecret,
        this.twoFactorRecoveryCodes,
        this.twoFactorConfirmedAt,
        this.createdAt,
        this.updatedAt,
        this.role,
    });

    factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Data.fromMap(Map<String, dynamic> json) => Data(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        phone: json["phone"],
        emailVerifiedAt: json["email_verified_at"],
        twoFactorSecret: json["two_factor_secret"],
        twoFactorRecoveryCodes: json["two_factor_recovery_codes"],
        twoFactorConfirmedAt: json["two_factor_confirmed_at"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        role: json["role"],
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "email": email,
        "phone": phone,
        "email_verified_at": emailVerifiedAt,
        "two_factor_secret": twoFactorSecret,
        "two_factor_recovery_codes": twoFactorRecoveryCodes,
        "two_factor_confirmed_at": twoFactorConfirmedAt,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "role": role,
    };
}
