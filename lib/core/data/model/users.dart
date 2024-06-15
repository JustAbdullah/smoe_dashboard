import 'package:get/get.dart';

class Users {
  var id;
  var name;
  var date;
  var phone;

  Users({
    required this.id,
    required this.name,
    required this.date,
    required this.phone,
  });

  factory Users.fromJson(Map<String, dynamic> json) {
    return Users(
      id: json['user_id'] ?? 0,
      name: json['user_name'] ?? 'Default Title',
      date: json['user_date'] ?? 'Default image',
      phone: json['user_number_phone'] ?? 00,
    );
  }
}
