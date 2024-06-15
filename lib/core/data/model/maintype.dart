import 'package:get/get.dart';

class maintype {
  var id;
  var name;
  var nameEn;

  var img;

  maintype(
      {required this.id,
      required this.name,
      required this.nameEn,
      required this.img});

  factory maintype.fromJson(Map<String, dynamic> json) {
    return maintype(
      id: json['type_id'] ?? 1,
      name: json['type_name_ar'] ?? 'Default Title',
      nameEn: json['type_name_en'] ?? 'Default Title',
      img: json['type_image'] ?? 'Default image',
    );
  }
}
